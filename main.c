#include <stdio.h>

int fatorial(int n){
 
    if(n==0){
        return 1;
    }else{
        return n*fatorial(n-1);
    }
}
 int fibbonacci(int n) {
     if(n==0){
         return 0;
     } if(n==1){
     return 1;
    } else { 
     return (fibbonacci(n-1)+ fibbonacci(n-2));
    }
 
}
int main(){
    int n = 6;
    int i;
    
    printf("fatorial de %d: %d\n" , n , fatorial(n));
    printf( "fibbonacci de : %d\n " , n);
    
    for(i=0;i<n;i++){
        printf("%d", fibbonacci(i));
    }
}
    