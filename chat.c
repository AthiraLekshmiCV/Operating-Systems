/*
 Program to implement a chat between the parent and child process
*/
#include<stdio.h>
#include<sys/types.h>
#include<stdlib.h>
#include<unistd.h>
int main(){

	pid_t pid1;
	int fdread[2];
	int fdwrite[2];
	char buffer1[30];
	char buffer2[30];
	pipe(fdwrite);
	pipe(fdread);
	pid1=fork();
	while(1){
		if(pid1==0){
			printf("In the child\n");
		
			read(fdread[0],buffer1,30);
			printf("The child has recieved the string %s\n",buffer1);
			printf("What do the child want to say\n");
			scanf("%s",&buffer2);
			write(fdwrite[1],buffer2,30);
				
	
		}	
		else{
			close(fdread[0]);
			close(fdwrite[1]);
			printf("In the parent\n");
			printf("What do the parent want to say to the child\n");
			scanf("%s",&buffer1);
			write(fdread[1],buffer1,30);
			read(fdwrite[0],buffer2,30);
			printf("The parent recieved the string %s\n",buffer2);
	
		}
	}
		exit(0);
}
