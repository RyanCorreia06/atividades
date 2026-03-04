#include <stdio.h>
int main()
{
int y, *p, x;
y = 0;// valor da variavel y
p = &y;// p recebe o conteudo de y ( nesse caso  , 0)
x = *p;// em x é atribuido o endereço de p , e consequentemente, recebe seu conteúdo
x = 4;// valor da variavel x
++(*p);// incrementa  o conteudo de p , que é o valor de y=0 e portanto passará a valer 1
x--;// decrementa x, valendo 3 agora
 
(*p) += x++;// y=y+3=4  ; x=4
printf ( "y = %d\n", y);//y é igual a 4

return 0;
}
 //2) p++ incrementa o ponteiro, indo para o próximo endereço na memoria // (*p)++ incrementa no conteudo da variavel  apontado por p
 //*(++p) incrementa primeiro, depois acessa o valor apontado 
 // b)*(p+10) significa acessar 10 posições à frente do ponteiro
 // 3 - Quais serão os valores de x, y e p ao final do trecho de código abaixo?
int main(){


int x, y, *p;
y = 0; 
p = &y; 
x = *p; // x = 0
x = 4; // x = 4
(*p)++; // y = 1
--x; // x = 3
(*p) += x; // y = 1 + 3 = 4
// x = 3; y = 4; p = &y

return 0;
}
// 4 - Os programas (trechos de código) abaixo possuem erros. Qual(is)? Como deveriam ser?
// a)
void main() {
    int x, *p;
    x = 100;
    p = x; // teria que ser p = &x;
    printf("Valor de p: %d.\n", *p);
}
// b)
void troca (int *i, int *j) { 
    int *temp; // ponteiro não foi inicializado corretamente, o certo seria int temp;
    *temp = *i; 
    *i = *j; 
    *j = *temp;
}
// c)
char *a, *b; 
a = “abacate”; 
b = “uva”; 
if (a < b) // erro ao comparar com endereços de memória ao invés de  strings
    printf (“%s vem antes de %s no dicionário”, a, b); 
else 
    printf (“%s vem depois de %s no dicionário”, a, b);
/* o correto seria:
if (strcmp(a, b) < 0)
    printf("%s vem antes de %s no dicionário", a, b);
else
    printf("%s vem depois de %s no dicionário", a, b);*/

// 5 - Escreva uma função chamada troca que troca os valores dos parâmetros recebidos. Sua assinatura deve ser: void troca(float *a, float *b);

void troca(float *a, float *b) {
    float temp;
    temp = *a;
    *a = *b;
    *b = temp;
}
