/*
Program to implement cp using system calls
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
   int fdold, fdnew;
	
	if (argc != 3)
	{
 		printf("need 2 arguments for copy program\n"); 
		exit(1);
	}
	fdold = open(argv[1],O_RDONLY); /* open source file in read only */
	if (fdold == -1)		/* The system call returns -1 if the file cannot be opened */
	{
		printf("cannot open file %s\n",argv[1]);  
		exit(1);
	}
	fdnew = creat(argv[2],PERMS);  /*create system call creates the file given by the argument2 with PERMS set globally */
	if (fdnew == -1)
	{
		printf("cannot create file %s\n",argv[2]);  
 		exit(1);
	}

	copy(fdold, fdnew);		/* function call to copy source to destination */
	exit(0);
}

copy(old,new)
	int old,new;
{
	int count;
	
	while ((count = read(old,buffer,sizeof(buffer))) > 0)    /* reads the source file until EOF and writes it to the detination */
		write(new,buffer,count);
}

