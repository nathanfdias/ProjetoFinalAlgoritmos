programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> tx

	cadeia vetorUsuarios[] = {"ADMINISTRADOR", "LEANDRO", "POEMA", "NATHAN", "MARI", "ANTHONY"}
	cadeia vetorSenhas[] = {"admin", "L123", "P123", "N123", "M123", "A123"}
	cadeia usuario, senha
	caracter opcao = '0'
	inteiro estMonitor = 10, valorMonitor = 1200
	inteiro estMouse = 30, valorMouse = 40
	inteiro estTeclado = 25, valorTeclado = 150
	
	funcao inicio()
	{
		logo()
	}
	
	funcao logo ()
	{
		const cadeia linha ="*"//para caso de alteração no símbolo impresso, muda apenas 1x
		inteiro i, j, k
		para(i = 0; i<8; i++){
			escreva(linha, " ")
		}
		para(j=0; j<3; j++){
			escreva("\n", linha)
			para(k=0; k<13; k++){
				escreva(" ")
				}
			escreva(linha)
		}
		escreva("\n")
		para(i=0; i<8; i++){
			escreva(linha, " ")
			}
		escreva("\n")
		para(i=0; i<1; i++){
			para(k=0; k<6; k++){
				escreva(" ")
			}
			escreva(linha, " ", linha, "\n")
		}
		para (i=0; i<=6;i++){
			para (k=0; k<1;k++){
				escreva(" ")
			}
			escreva(linha)
			
		}
		lescreval("InfoLux Computadores")
		entrarNaLoja()
	}

	funcao entrarNaLoja ()
	{
		barraMenu("Bem vindo(a)!")
		lescreval("Deseja entrar na loja? ")
		escreval("1 - Sim ")
		escreval("2 - Não")
		escreval("3 - Sair")
		lescreva("=> ")
		leia(opcao)	

		escolha (opcao) 
		{
			caso '1' : 
				limpa()
				login()
			pare
			caso '2' : 
				limpa() 
				lescreval("Volte sempre que desejar!")
			pare
			caso '3' :
				finalizar()
			pare
			caso contrario :
				limpa()
				opcaoInvalida()
				u.aguarde(1000)
				entrarNaLoja()
		}		
	}
		
	funcao login()
	{	
		const inteiro tamanho = 6
		logico acessoPermitido = falso

		barraMenu("Login")
		escreva("Usuário: ")
		leia(usuario)
		usuario = tx.caixa_alta(usuario)
		escreva("Senha: ")
		leia(senha)
		escreval("")
	
		para(inteiro i=0; i < tamanho; i++) {
			acessoPermitido = (usuario == vetorUsuarios[i] e senha == vetorSenhas[i])
			se (acessoPermitido) pare
		} 

		se (acessoPermitido){
			limpa()
			menuPrincipal()
		} senao {
			acessoInvalido()
		}		
	}

	funcao acessoInvalido()
     {
		limpa()
		barraMenu("Login")
		lescreval("Usuário e/ou senha inválidos, deseja tentar novamente?")
		escreval("1 - Sim")
		escreval("2 - Menu anterior")
		escreval("3 - Sair")
		lescreva("=> ")
		leia(opcao)
	
		escolha (opcao)
		{
			caso '1' :
				limpa()
				login()
			pare
			caso '2' :
				limpa()
				entrarNaLoja()
			caso '3' :
				finalizar()
			pare
			caso contrario :
			{	
				opcaoInvalida()
				login()
			}
		}
     }      		

	funcao menuPrincipal() 
	{	
		barraMenu("Menu principal")
		escreval("Bem vindo " + usuario + "!")
		escreval("Qual categoria deseja acessar? ")
		escreval("1 - Computadores") 
		escreval("2 - Hardware") 
		escreval("3 - Acessórios")
		escreval("4 - Sair ")
		escreva("=> ")
		leia(opcao)

		escolha(opcao) {
			caso '1' :
				limpa()
				barraMenu("Computadores")
				listaComputadores()
			pare
			caso '2' :
				limpa()
				barraMenu("Hardware")
				listaHardware()
			pare
			caso '3' :
				limpa()
				barraMenu("Acessórios")
				listaAcessorios()
			pare
			caso '4' :
				limpa()
				u.aguarde(1000)
				login()
			pare
			caso contrario:
				limpa()
				escreva("Opção inválida. Retornando ao Menu Principal.")	
				u.aguarde(1000)
				limpa()
				menuPrincipal()
			pare	
		}
	}

	funcao listaComputadores() 
	{
		lescreval("Nome: Mouse Ml-GMH64")
		escreval("Descrição: Com o seu Tedge ML-GMH64 encontre o que você está"+
		" procurando em um único dispositivo com a melhor tecnologia.")
		escreval("Quantidade: 30 ")
		escreval("Valor: R$ 40,00 ")
		escreval("")
		
		escreval("Nome: Monitor Ultrawide 29") 
		escreval("Descrição: Trabalhe em mais de um relatório de uma vez só,"+
		" sem precisar alternar de janelas toda vez.")
		escreval("Quantidade: 10 ")
		escreval("Valor: R$ 1200,00 ")
		escreval("")

		
		escreval("Nome: Teclado Mecânico Knup")
		escreval("Descrição: Este teclado Knup de alto desempenho permite que"+
		" você desfrute de horas ilimitadas de jogos.")
		escreval("Quantidade: 25")
		escreval("Valor: R$ 150,00 ")	
		escreval("")

		lescreval("Deseja voltar ao menu?")
		escreval("1 - Sim")
		escreval("2 - Sair")
		escreva("=> ")
		leia(opcao)

		escolha(opcao){
			caso '1' :
				limpa()
				u.aguarde(1000)
				menuPrincipal()
			pare
			caso '2' :
				limpa()
				finalizar()
			pare
			caso contrario :
				limpa()
				opcaoInvalida()
				listaComputadores()			
		}

		
	}

	funcao listaHardware() 
	{		
		lescreval("Nome: Hd Externo 4TB")
		escreval("Descrição: Um HD externo oferece mais espaço de armazenamento para"+
		" guardar os seus dados.")
		escreval("Quantidade: 5 ")
		escreval("Valor: R$ 200,00 ")
		escreval("")

		
		escreval("Nome: Cabo Usb 2 Metros")
		escreval("Descrição: Conector que permite conectar diferentes elementos através do"+
		" Universal Serial Bus.")
		escreval("Quantidade: 40 ")
		escreval("Valor: R$ 10,00 ")
		escreval("")

		
		escreval("Nome: Cabo Hdmi 1 Metro ")
		escreval("Descrição: Cabo HDMI Premium com conectores banhados à ouro 24k, protegido"+ 
		" com blindagem , garantindo maior durabilidade, evitando interferências e perda de qualidade.")
		escreval("Quantidade: 15 ")
		escreval("Valor: R$ 25,00 ")
		escreval("")
		
		lescreval("Deseja voltar ao menu?")
		escreval("1 - Sim")
		escreval("2 - Sair")
		escreva("=> ")
		leia(opcao)

		escolha(opcao){
			caso '1' :
				limpa()
				u.aguarde(1000)
				menuPrincipal()
			pare
			caso '2' :
				limpa()
				finalizar()
			pare
			caso contrario :
				limpa()
				opcaoInvalida()
				listaHardware()
		}
	}

	funcao listaAcessorios()
	{
		lescreval("Nome: Cadeira Gamer Moobx Gt")
		escreval("Descrição: As cadeiras GT RACER da MoobX são a opção ideal"+
		"para os games mais desafiadores e irados. Sinta a adrenalina a cada jogo!")
		escreval("Quantidade: 10 ")
		escreval("Valor: R$ 450,00 ")
		escreval("")
		
		escreval("Nome: Mesa Escritório ")
		escreval("Descrição: A nova linha de mesas para escritórios da "+
		"Kappesberg trouxe muitas novidades para o seu espaço de trabalho."+ 
		"Deixe seu ambiente de trabalho com espaço e com organização. ")
		escreval("Quantidade: 5")
		escreval("Valor: R$ 500,00 ")
		escreval("")

		
		escreval("Nome: Caneca Stanley")
		escreval("Descrição: O modelo, que está disponível na cor preto fosco e oferece capacidade para 709ml,"+
		" faz parte da linha Classic e apresenta uma qualidade surpreendente.")
		escreval("Quantidade: 80 ")
		escreval("Valor: R$ 100,00 ")
		escreval("")

		lescreval("Deseja voltar ao menu?")
		escreval("1 - Sim")
		escreval("2 - Sair")
		escreva("=> ")
		leia(opcao)

		escolha(opcao){
			caso '1' :
				limpa()
				u.aguarde(1000)
				menuPrincipal()
			pare
			caso '2' :
				limpa()
				finalizar()
			pare
			caso contrario :
				limpa()
				opcaoInvalida()
				listaAcessorios()
		}
	}

	funcao escreval(cadeia texto)
	{
		escreva(texto, "\n")
	}

	funcao lescreva(cadeia texto)
	{
		escreva("\n", texto)
	}

	funcao lescreval(cadeia texto)
	{
		escreva("\n", texto, "\n")
	}

	funcao barraMenu(cadeia texto)
	{
		lescreval("::::::::::: " + texto + " :::::::::::")
	}

	funcao finalizar()
	{
		limpa()
		lescreval("Programa finalizado!")	
     }

     funcao opcaoInvalida()
     {
     	limpa()
		escreval("Opção inválida, tente novamente!")	
     }
     	
     funcao centralCompras()
	{
		inteiro decisao, quant, valorCompra = 0
		
		escreva("Bem vindo a central de Compras !")
		u.aguarde(1000)
		limpa()

		escreva("Qual Item deseja Comprar:\n")
		escreva("1 - Monitor\n")
		escreva("2 - Mouse\n")
		escreva("3 - Teclado\n")
		escreva("4 - Cabo USB\n")
		escreva("5 - Cabo HDMI\n")
		escreva("6 - Hd Externo\n")
		escreva("7 - Cadeira\n")
		escreva("8 - Mesa\n")
		escreva("9 - Caneca\n")
		escreva("=> ")
		leia(decisao)

		escolha(decisao) 
		{
			caso 1:
				limpa()
				u.aguarde(1000)
				escreva("Qual quantidade deseja Comprar? \n")
				escreva("=> ")
				leia(quant)

				se(quant > estMonitor)
				{
					limpa()
					escreva("Quantidade acima do estoque.\n")
					escreva("Estoque Disponível: ", estMonitor)
					u.aguarde(3000)
					limpa()
					centralCompras()
				} senao se (quant < 1) 
				{
					limpa()
					escreva("Impossível Comprar valores nulos e negativos!")
					u.aguarde(2000)
					limpa()
					centralCompras()		
				} senao 
				{
					inteiro x
					
					limpa()
					valorCompra = quant*valorMonitor
					escreva("Parabéns você comprou ", quant, " de Monitor. Valor: ", valorCompra, " reais\n")
					estMonitor = estMonitor - quant
					u.aguarde(1000)
					escreva("Deseja Continuar comprando?\n")
					escreva("1 - Comprar outros itens\n")
					escreva("2 - Sair da Loja\n")
					escreva("=> ")
					leia(x)

					escolha(x) {
						caso 1:
							limpa()
							escreva("Retornando a Central Compras.")
							u.aguarde(1000)
							limpa()
							centralCompras()
						pare
						caso 2:
							limpa()
							escreva("Obrigado e volte sempre.")
							u.aguarde(1000)
						caso contrario:
							limpa()
							escreva("Opção Inválida\n")
							u.aguarde(1000)
							limpa()
							centralCompras()	
					}
						
				}
			pare
			caso 2:
				limpa()
				u.aguarde(1000)
				escreva("Qual quantidade deseja Comprar? \n")
				escreva("=> ")
				leia(quant)

				se(quant > estMouse)
				{
					limpa()
					escreva("Quantidade acima do estoque.\n")
					escreva("Estoque Disponível: ", estMouse)
					u.aguarde(3000)
					limpa()
					centralCompras()
				} senao se (quant < 1) 
				{
					limpa()
					escreva("Impossível Comprar valores nulos e negativos!")
					u.aguarde(2000)
					limpa()
					centralCompras()		
				} senao 
				{
					inteiro x
					
					limpa()
					valorMouse = quant*valorMouse
					escreva("Parabéns você comprou ", quant, " de Mouse. Valor: ", valorCompra, " reais\n")
					estMouse = estMouse - quant
					u.aguarde(1000)
					escreva("Deseja Continuar comprando?\n")
					escreva("1 - Comprar outros itens\n")
					escreva("2 - Sair da Loja\n")
					escreva("=> ")
					leia(x)

					escolha(x) {
						caso 1:
							limpa()
							escreva("Retornando a Central Compras.")
							u.aguarde(1000)
							limpa()
							centralCompras()
						pare
						caso 2:
							limpa()
							escreva("Obrigado e volte sempre.")
							u.aguarde(1000)
						caso contrario:
							limpa()
							escreva("Opção Inválida\n")
							u.aguarde(1000)
							limpa()
							centralCompras()	
					}
						
				}
			pare
			caso 3:
				limpa()
				u.aguarde(1000)
				escreva("Qual quantidade deseja Comprar? \n")
				escreva("=> ")
				leia(quant)

				se(quant > estTeclado)
				{
					limpa()
					escreva("Quantidade acima do estoque.\n")
					escreva("Estoque Disponível: ", estTeclado)
					u.aguarde(3000)
					limpa()
					centralCompras()
				} senao se (quant < 1) 
				{
					limpa()
					escreva("Impossível Comprar valores nulos e negativos!")
					u.aguarde(2000)
					limpa()
					centralCompras()		
				} senao 
				{
					inteiro x
					
					limpa()
					valorCompra = quant*valorTeclado
					escreva("Parabéns você comprou ", quant, " de Teclado. Valor: ", valorCompra, " reais\n")
					estTeclado = estTeclado - quant
					u.aguarde(1000)
					escreva("Deseja Continuar comprando?\n")
					escreva("1 - Comprar outros itens\n")
					escreva("2 - Sair da Loja\n")
					escreva("=> ")
					leia(x)

					escolha(x) {
						caso 1:
							limpa()
							escreva("Retornando a Central Compras.")
							u.aguarde(1000)
							limpa()
							centralCompras()
						pare
						caso 2:
							limpa()
							escreva("Obrigado e volte sempre.")
							u.aguarde(1000)
						caso contrario:
							limpa()
							escreva("Opção Inválida\n")
							u.aguarde(1000)
							limpa()
							centralCompras()	
					}
						
				}
			pare
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @DOBRAMENTO-CODIGO = [363];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */