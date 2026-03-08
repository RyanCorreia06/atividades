// 1 - O que e um Tipo Abstrato de Dados (TAD) e qual a caracterıstica fundamental na sua utilização?
// R/ Um Tipo Abstrato de Dados  é um modelo que define um conjunto de dados e as operações que podem ser realizadas sobre eles, sem especificar como essas operações são implementadas internamente.

// 2 - Quais as vantagens de se programar com TADs?
/*R/Encapsulamento (Oculta os detalhes da implementação.);
      Reutilização de código (O mesmo TAD pode ser usado em vários programas.);
      Facilidade de manutenção (Se a implementação mudar, o programa principal não precisa mudar.);
      Organização do código (O programa fica mais modular e estruturado.);
      Redução de erros (Evita que o usuário manipule diretamente os dados internos.).*/ 
      
      // Crie um TAD que implemente o controle de uma conta bancaria, implemente funções para inicializar, deposito, sacar e imprimir o saldo.

#include <stdio.h>
#include <stdlib.h>

typedef struct{
    int numero;
    float saldo;
} ContBancaria;

void inicializar(ContBancaria *c, int numero){
    c->numero = numero;
    c->saldo = 50000;
}

void depositar(ContBancaria *c, float valor){
    c->saldo += valor;
}

void sacar(ContBancaria *c, float valor){
    if(valor <= c->saldo){
        c->saldo -= valor;
        printf("Saque realizado com sucesso!\n");
    }else{
        printf("Saldo insuficiente!\n");
    }
}

void imprimirSaldo(ContBancaria *c){
    printf("Conta: %d\n", c->numero);
    printf("Saldo: %.2f\n", c->saldo);
}

ContBancaria* criarConta(int numero){
    ContBancaria *c;

    c = (ContBancaria*) malloc(sizeof(ContBancaria));

    if(c != NULL){
        inicializar(c, numero);
    }

    return c;
}

int main(){

    ContBancaria *conta;
    int numeroConta;
    int opcao;
    float valor;

    printf("Digite o numero da conta: ");
    scanf("%d", &numeroConta);

    conta = criarConta(numeroConta);

    if(conta == NULL){
        printf("Erro ao criar conta\n");
        return 1;
    }

    do{
        printf("\n--- MENU BANCARIO ---\n");
        printf("1 - Depositar\n");
        printf("2 - Sacar\n");
        printf("3 - Ver saldo\n");
        printf("4 - Sair\n");
        printf("Escolha uma opcao: ");
        scanf("%d", &opcao);

        switch(opcao){

            case 1:
                printf("Digite o valor do deposito: ");
                scanf("%f", &valor);
                depositar(conta, valor);
                break;

            case 2:
                printf("Digite o valor do saque: ");
                scanf("%f", &valor);
                sacar(conta, valor);
                break;

            case 3:
                imprimirSaldo(conta);
                break;

            case 4:
                printf("Encerrando...\n");
                break;

            default:
                printf("Opcao invalida!\n");
        }

    }while(opcao != 4);

    free(conta);

    return 0;
}
    
