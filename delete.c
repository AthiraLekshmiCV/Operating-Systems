/*
Program to implement rm using system calls
*/
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#define PERMS 0666 /* RW for owner, group, others */
char buffer[2048];

main(argc,argv)
  int argc;
  char *argv[];
{
   int f;
	
	if (argv[1] == NULL )
	{
 		printf("need 1 arguments for  deletion\n"); 
		exit(1);
	}
	f = open(argv[1],O_RDONLY); /* open source file in read only */
	if (f == -1)
	{
		printf("cannot open file %s\n",argv[1]);  
		exit(1);
	}
		
	unlink(argv[1]);
	
	exit(0);
}
