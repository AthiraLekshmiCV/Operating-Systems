/*
Program to create a process tree
	parent
	/\
  child1  child2
  	    /\
      child3  child4	

*/

#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>

int main(int argc,char * argv[]){
	
	int j;
	pid_t pid,pid1,pid2,pid3,pid4;
	
	if((pid1=fork())==0)
		printf("CHILD1 PROCESS ID %d PARENT PROCESS ID %d \n",getpid(),getppid());
	else if((pid2=fork()==0)){
	
		printf("CHILD2 PROCESS ID %d PARENT PROCESS ID %d \n",getpid(),getppid());
	
		if((pid3=fork())==0)
			printf("CHILD3 PROCESS ID %d PARENT PROCESS ID %d \n",getpid(),getppid());
		else if((pid4=fork())==0)
			printf("CHILD4 PROCESS ID %d PARENT PROCESS ID %d \n",getpid(),getppid());
		else{	
			wait();
		}
	
	}
	else{
 		while(wait(&j)!=-1);
	}
	
	
	
	


	return 0;
}
