/**
  ******************************************************************************
  * @file    CRYP/CRYP_AESECBmode/main.h 
  * @author  MCD Application Team
  * @version V1.6.1
  * @date    21-October-2015
  * @brief   Header for main.c module
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2015 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */
  
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx.h"
#include "stm32f4xx_cryp.h"
#include <stdio.h>


/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
/* Exported macro ------------------------------------------------------------*/
/* The size of the plain text in word (PlainData is declared as unsigned word). It must be a multiple of 4.
   AES is a block cipher algorithm. The plain text must be multiple of 128 bits = 16 bytes = 4 words */
#define DATA_SIZE              ((uint32_t)8)

#define CRYP_DIN_REG_ADDR      ((uint32_t)0x50060008)  /* Crypto DIN register address */
#define CRYP_DOUT_REG_ADDR     ((uint32_t)0x5006000C)  /* Crypto DOUT register address */

/* Exported functions ------------------------------------------------------- */

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
