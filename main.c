/* main.c */
#include "world.h"
#include <stdio.h>

int main (void)
{
	char a[30];
	char b[30];

	h_world(a);
	g_world(b);

	printf("%s %s",a,b);
}
