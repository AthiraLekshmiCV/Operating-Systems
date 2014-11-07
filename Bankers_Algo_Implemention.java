package bankers;

/**
 *
 * @author athiralekshmicv
*/

import java.util.*;

public class Bankers_Algo_Implementation{
	public static void main(String[] args){
		Scanner in=new Scanner(System.in);
                Scanner it=new Scanner(System.in);
		int p,r,instances,i,j,c1=0,c2=0,m=0;
		System.out.println("Enter the number of processes");
		p=in.nextInt();
		System.out.println("Enter the number of resources");
		r=in.nextInt();
		int[] avail=new int[r];
                int[][] need=new int[p][r];
                int[][]alloc=new int[p][r];
                int[][] max=new int[p][r];
                int[]finish=new int[p];
		System.out.println("Enter the number of available instances");
		for(i=0;i<r;i++){
                    System.out.print("r["+ (i+1)+"] ");
                    avail[i]=in.nextInt();
                }
		System.out.println("Enter the maximum number of instances");
		for(i=0;i<p;i++){
           
			for(j=0;j<r;j++){
                            System.out.println("For p["+ (i+1) + "]r["+(j+1)+"] ");
				max[i][j]=it.nextInt();
			}
		}
                System.out.println("Enter the number of instances already allocated");
                for(i=0;i<p;i++){
                    for(j=0;j<r;j++){
                          System.out.println("For p["+ (i+1) + "]r["+(j+1)+"] ");
                          alloc[i][j]=it.nextInt();
                          need[i][j]=max[i][j]-alloc[i][j];
                    }
                }
                for(i=0;i<p;i++){
                    finish[i]=0;
                }
                
                while(c1!=p){
	    c2=c1;
	 
	    for(i=0;i<p;i++){
		for(j=0;j<r;j++){
	            if(need[i][j]<=avail[j]){
	                 m++;	            
		    }  
	             
	        }    
	        if(m==r && finish[i]==0 ){
	           System.out.println("P "+(i+1) +" ");
		   finish[i]=1;
	           for(j=0;j<r;j++){
	               avail[j]=avail[j]+alloc[i][j];
	           } 
	             c1++;
	}
	         m=0;
	       }
	  
	         if(c1==c2)
	         {
	         System.out.println("\t\t Stop ..After this.....Deadlock \n");
	 
	         break;
	       } 	 }	  
                
                
	}

}
