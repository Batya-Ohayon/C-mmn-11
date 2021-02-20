#include<stdio.h>

int count_odd_bits(unsigned short int);

int main() 
{
   unsigned short int x;
   printf("\n Please enter one or more numbers and at the end type cntr+d \n");

   while((scanf("%hu",&x))!=EOF) 
   {
	printf("\n %hu has %d lit bits (equal to 1) in the odd places\n", x, count_odd_bits(x));
   }
  return 0;
}


int count_odd_bits(unsigned short int x)
{
   int cnt=0;
   unsigned short int mask=2; /*1 in the first odd place*/

   while(mask) /*mask!=0*/
   {
	if((mask&x)!=0)
	{
		cnt++;
	}
     mask<<=2; /*To stay in the odd place*/
   }
return cnt;
}





