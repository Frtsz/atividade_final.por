programa {
  funcao inicio() {
    inteiro menu
    real saldo=0, saque, deposito
    cadeia extrato=""

    escreva(".-------MENU-------.\n")
    escreva("|__________________|\n")
    escreva("| 1 - SAQUE        |\n")
    escreva("| 2 - DEPOSITO     |\n")
    escreva("| 3 - EXTRAT0      |\n")
    escreva("| 0 - SAIR         |\n")
    escreva("|__________________|\n")
    escreva("| SALDO: R$"+saldo+"\n")
    escreva("| ESCOLHA: ")
    leia(menu)
    limpa()

    enquanto(menu!=0)
    {
      escolha(menu)
      {
        caso 1:
          //saque
          escreva("|       SAQUE        |\n")
          escreva("Valor a ser sacado: R$")
          leia(saque)

          enquanto(saque<=0)
          {
            escreva("Valor inválido, digite novamente: R$")
            leia(saque)
          }

          se(saque>saldo)
          {
            escreva("Saque indisponível!\n")
          }
          
          senao
          {
            escreva("Saque de R$"+saque+" realizado com sucesso!\n")

            saldo=saldo-saque
            extrato=extrato+"Saque----------R$"+saque+"\n"
          }
          
        pare

        caso 2:
          //deposito
          escreva("|     DEPOSITO      |\n")
          escreva("Valor a ser depositado: R$")
          leia(deposito)

          enquanto(deposito<=0)
          {
            escreva("Valor inválido, digite novamente: R$")
            leia(deposito)
          }
          
          escreva("Deposito de R$"+deposito+" realizado com sussesso!\n")

          saldo=saldo+deposito
          extrato=extrato+"Deposito-------R$"+deposito+"\n"
        pare

        caso 3:
          //extrato
          escreva(extrato)
        pare
      }

      escreva("\n.-------MENU-------.\n")
      escreva("|__________________|\n")
      escreva("| 1 - SAQUE        |\n")
      escreva("| 2 - DEPOSITO     |\n")
      escreva("| 3 - EXTRAT0      |\n")
      escreva("| 0 - SAIR         |\n")
      escreva("|__________________|\n")
      escreva("| SALDO: R$"+saldo+"\n")
      escreva("| ESCOLHA: ")
      leia(menu)
      limpa()
    }
  }
}
