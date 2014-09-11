/*
Program to implement  piping  between  two commands
who | wc
*/
#include<stdio.h>
#include<sys/types.h>
#include<fcntl.h>
#include<unistd.h>
int main(int argc,char * argv[]){
	pid_t pid1;
	int fd[2];
	pipe(fd);
	
	pid1=fork();
	if(pid1>0){	
		dup2(fd[0],0);
		close(fd[1]);
		execlp(argv[2],"argv[2]",NULL);
			
	}
	else if(pid1==0){
		dup2(fd[1],1);
		close(fd[0]);
		execlp(argv[1],"argv[1]",NULL);
			
	}
	else{	
		
		exit(1);
	}
	
	exit(0);
}x	


