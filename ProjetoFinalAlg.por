programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	
	caracter opcao = '0'
	
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
		barraMenu("Bem vindo!")
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
				opcaoInvalida()
				limpa()
				u.aguarde(1000)
				entrarNaLoja()
		}		
	}
		
	funcao login()
	{	
		cadeia vetorUsuarios[6] = {"1", "2", "3", "4", "5", "6"}
		cadeia vetorSenhas[6] = {"1", "2", "3", "4", "5", "6"}
		cadeia usuario, senha
		inteiro i
		logico acessoPermitido = falso

		barraMenu("Login")
		escreva("Usuário: ")
		leia(usuario)
		escreva("Senha: ")
		leia(senha)
		escreval("")
	
		para(i=0; i < 6; i++) {
			se (acessoPermitido == falso) {
				se (usuario == vetorUsuarios[i] e senha == vetorSenhas[i]) { 
					acessoPermitido = verdadeiro
					limpa()
					menuPrincipal()
				} senao {
					acessoInvalido()
				}
			}
		}			
	}

	funcao menuPrincipal() 
	{	
		barraMenu("Menu principal")
		escreval("Bem vindo USER !")
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7078; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */