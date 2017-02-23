#include <LPC17xx.h>
unsigned int i,j;
unsigned long LED=0x00000010;
//PROGRAM TO ON/OFF LED SERIALLY
//JOHNSON COUNTER
int main(void)
{j=1;
	SystemInit();
	SystemCoreClockUpdate();
	LPC_PINCON->PINSEL0 &=0xFF0000FF;
	LPC_GPIO0->FIODIR |= 0x00000FF0;
	while(1)
	{
		if(j==0)
		for(LED=0x00000010;LED<0x00001000;LED=LED+0x00000010)
		{
			LPC_GPIO0->FIOPIN=LED;
			for(i=0;i<10;i++);
			
		}
		else
		{
			for(LED=0x00000FF0;LED>0x00000000;LED=LED-0x00000010)
		{
			LPC_GPIO0->FIOPIN=LED;
			for(i=0;i<10;i++);
			
		}
		}
	 
	}
}