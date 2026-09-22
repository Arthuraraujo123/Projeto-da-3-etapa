programa
{
funcao inicio()
{

cadeia equipamentos[3] = {"notebooks", "monitores", "teclados"}

	inteiro estoque[3}[2] = {
		{5, 10},
		{15, 10},
		{20, 15}
	}

	inteiro opcao = 0
	inteiro id
	inteiro quantidade
	inteiro i

	
	enquanto (opcao != 3)
	{
		
		escreva("   SISTEMA DE CONTROLE DE ESTOQUE\n")
		escreva("1 - Emitir Relatório de Ativos\n")
		escreva("2 - Registrar Recebimento de Equipamento\n")
		escreva("3 - Encerrar Sistema\n")
		escreva("Digite uma opção: ")
		leia(opcao)

				caso 1:
					escreva("\n=relatório de ativos \n")

					
					para (inteiro i = 0; i < 3; i++)
					{
						escreva("\nID: ", i, "\n")
						escreva("Equipamento: ", equipamentos[i], "\n")
						escreva("quantidade atual: ", estoque[i][0], "\n")
						escreva("quantidade minima: ", estoque[i][1], "\n")

						se (estoque[i][0] < estoque[i][1])
						{
							escreva(" Estoque crítico, abrir chamado de compra.\n")
						}
					}
					pare

				caso 2:
					escreva("\n Recebimento de equipamento \n")
					escreva("Digite o id do equipamento (0 a 2): ")
					leia(id)

				
					se (id >= 0 e id <= 2)
					{
						escreva("Equipamento: ", equipamentos[id], "\n")
						escreva("digite a quantidade recebida: ")
						leia(quantidade)

						estoque[id][0] = estoque[id][0] + quantidade

						escreva("Recebimento registrado\n")
						escreva("Nova quantidade em estoque: ", estoque[id][0], "\n")
					}
					senao
					{
						escreva("Erro: id de equipamento invalido, a operação foi bloqueada\n")
					}
					pare

				caso 3:
					escreva("\nSistema encerrada\n")
					pare

				caso contrario:
					escreva("\n Opção invalida, escolha de 1 a 3.\n")
			}
		}
	}
}
	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */