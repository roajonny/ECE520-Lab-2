#include <stdio.h>
#include "platform.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "xil_printf.h"
#include <stdlib.h>
#include <math.h>

Xuint32 *baseaddr_p = (Xuint32 *)XPAR_MY_MULTIPLIER_0_S00_AXI_BASEADDR;

int main()
{
    init_platform();

    xil_printf("Multiplier Test\n\r");
    u32 num_arr[100];
    
    size_t arr_size = sizeof(num_arr)/sizeof(u32);
    for (size_t i = 0; i < arr_size; i++) {
    num_arr[i] = rand() % (int) pow(2, 32); //2^32 upper bound
    }
	
	for(size_t j = 0; j < arr_size; j++) {
	*(baseaddr_p+0) = num_arr[j];
	xil_printf("%d -> Wrote: 0x%08x \n\r", j+1, *(baseaddr_p+0));
	xil_printf("Read: 0x%08x \n\r", *(baseaddr_p+1));
	}
	xil_printf("End of sequence.");
    return 0;
}