#include <stdio.h>

int exponencial (int x, int y){
    if(y==0){
        return 1;
    }else{
        return exponencial(x,y-1)*x;
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
    int n ;
    int x=0;
    int y=0;
    int i;
    printf("insira um número e seu expoente:");
    scanf("%i %i", &x , &y);
    printf("%i", exponencial(x,y));
    
    printf( "\ndigite um numero para ver sua sequência fibbonacci: " );
    scanf("%i", &n);
    for(i=0;i<n;i++){
        printf("%d", fibbonacci(i));
    }
}
    
