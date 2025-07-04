/*
 * flash.c
 *
 *  Created on: Jul 4, 2025
 *      Author: wh310
 */


#include "flash.h"

#define FLASH_SECTOR_MAX        64

typedef struct
{
	uint32_t addr;
	uint16_t length;
} flash_tbl_t;


static flash_tbl_t flash_tbl[FLASH_SECTOR_MAX];

static bool flashInSector(uint16_t sector_num, uint32_t addr, uint32_t length);

bool flashInit(void)
{
	for (int i=0;i<FLASH_SECTOR_MAX;i++)
	{
		flash_tbl[i].addr =0x8000000 + i*1024;   //테이블 시트에 나와있은 시작 주소 0x8000000 에 sector 크기 1024(0x800U)
		flash_tbl[i].length = 1024;
	}

	return true;
}

bool flashErase(uint32_t addr, uint32_t length)
{
	bool ret = false;
	HAL_StatusTypeDef status;
	FLASH_EraseInitTypeDef init;
	uint32_t page_error;

	int16_t start_sector_num = -1;
	uint32_t sector_count = 0 ;


	for(int i=0;i<FLASH_SECTOR_MAX;i++)
	{
		if(flashInSector(i,addr,length) == true)
		{
			if(start_sector_num < 0)
			{
				start_sector_num = i;  //처음 검출되는 sector가 첫 넘버
			}
			sector_count++;  //몇개의 sector를 지워야하는지
		}
	}


	if(sector_count >0)
	{
		HAL_FLASH_Unlock();
		init.TypeErase = FLASH_TYPEERASE_PAGES; //FLASH_EraseInitTypeDef 타고 들어가서 찾음
		init.Banks = FLASH_BANK_1;  // //FLASH_EraseInitTypeDef 타고 들어가서 찾음
		init.PageAddress = flash_tbl[start_sector_num].addr;
		init.NbPages    = sector_count;
		status =  HAL_FLASHEx_Erase(&init,&page_error);
		if(status == HAL_OK)
		{
			ret =true;
		}
		HAL_FLASH_Lock();
	}

	return ret;

}

bool flashWrite(uint32_t addr, uint8_t *p_data, uint32_t length)
{
	bool ret =true;
	HAL_StatusTypeDef status;

	if(addr%2 != 0)   //ALIGN 되지 않았으면 리턴
	{
		return false;
	}

	HAL_FLASH_Unlock();

	for(int i=0;i<length; i+=2)
	{
		uint16_t data;

		data = p_data[i+0]  << 0 ;    //쉬프트를 하지 않는다
		data |= p_data[i+1] << 8 ;   //16bit 변수로 만들어 준다?

		status = HAL_FLASH_Program(FLASH_TYPEPROGRAM_HALFWORD, addr +i , (uint64_t)data);
		if(status != HAL_OK)
		{
			ret =false;
			break;
		}
	}

	HAL_FLASH_Lock();
	return ret;

}

bool flashRead(uint32_t addr, uint8_t *p_data, uint32_t length)
{
	bool ret =true;

	uint8_t *p_byte = (uint8_t *)addr;

	for(int i=0;i<length;i++)
	{
		p_data[i] = p_byte[i];
	}

	return ret;
}


bool flashInSector(uint16_t sector_num, uint32_t addr, uint32_t length)
{
	bool ret = false;

	uint32_t sector_start;
	uint32_t sector_end;
	uint32_t flash_start;
	uint32_t flash_end;

	sector_start = flash_tbl[sector_num].addr;
	sector_end = flash_tbl[sector_num].addr + flash_tbl[sector_num].length -1;
	flash_start = addr;      //지워야 할 주소
	flash_end = addr + length -1;

	if(sector_start >=flash_start && sector_start <=flash_end)
	{
		ret = true;
	}
	if (sector_end >= flash_start && sector_end <= flash_end)
	{
		ret =true;
	}

	if(flash_start >=sector_start && flash_start <= sector_end)
	{
		ret =true;
	}

	if(flash_end >=sector_start && flash_end <= sector_end)
	{
		ret = true;
	}

	//sector start 주소가 flash 주소 안에 있는지 and sector end 주소가 flash 주소 안에 있는지

//flash는  1Kbyte 64개로 이루어져 있음. 이 데이터시트는
	return ret;
}
