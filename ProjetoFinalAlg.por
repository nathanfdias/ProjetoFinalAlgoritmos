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
		escreva("\n\nInfoLux Computadores\n")
		entrarNaLoja()
	}

	funcao entrarNaLoja ()
	{
		barraMenu("Bem vindo!")
		lescreval("Deseja entrar na loja? ")
		escreval("1 - Sim ")
		escreval("2 - Não")
		escreval("9 - Sair")
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
			caso '9' :
				finalizar()
			pare
			caso contrario :
				opcaoInvalida()
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
		//opções de menu
		barraMenu("Menu principal")
		produtos()
	}
	
	funcao produtos()
	{
<<<<<<< HEAD
		inteiro escolhaMenuProdutos
		
		escreva("Bem vindo ao Menu de Produtos!")
		escreva("Digite - 1 para Abrir lista de produtos\nDigite - 2 para Visualizar vitrine",
		"\nDigite - 3 para Central Compras\nDigite - 4 para Sair da loja\n")
		leia(escolhaMenuProdutos)

		escolha(escolhaMenuProdutos) {
			caso 1:
				escreva("Você optou por lista.")
				limpa()
				u.aguarde(1500)
				listaProdutos()
			pare
			caso 2:
				escreva("Você optou por Vitrine.")
				limpa()
				u.aguarde(1500)
				vitrineProdutos()
			pare
			caso 3:
				limpa()
				escreva("\nEntrando em Central de Compras...")
				u.aguarde(2000)
				limpa()
				centralCompras()
			pare
			caso 4:	
				limpa()
				escreva("\nSaindo da loja...")
				u.aguarde(2500)
				escreva("Obrigado Volte Sempre.")
			pare
			caso contrario:
				limpa()
				escreva("Opção inválida. Retornando ao Menu Principal.")	
				u.aguarde(1500)
				limpa()
				menuPrincipal()
			pare	
		}
	}

	funcao listaProdutos() 
	{
		inteiro escolhaListaProdutos
		
		escreva("Qual setor deseja explorar ?\n",
		"Digite - 1 para equipamentos de Computadores \nDigite - 2 para Peças de Hardware \nDigite - 3 para Conforto\n",
		"Digite - 4 para Retornar ao Menu de Produtos\n" )
		leia(escolhaListaProdutos)

		escolha(escolhaListaProdutos) {
			caso 1:
				limpa()
				escreva("Você optou por Computador:\n")
				listaComputadores()
			pare
			caso 2:
				limpa()
				escreva("Você optou por Peças de Hardware:\n")
				listaHardware()
			pare
			caso 3:
				limpa()
				escreva("Você optou por Conforto:\n")
				listaConforto()
			pare
			caso 4:
				limpa()
				escreva("Retornando ao Menu de Produtos")
				u.aguarde(1000)
				limpa()
				produtos()
			pare
			caso contrario:
				limpa()
				escreva("Opção inválida. Retornando ao Menu Principal.")	
				u.aguarde(1500)
				limpa()
				menuPrincipal()
			pare	
		}
	}

	funcao listaComputadores() 
	{
		cadeia decisao
		
		escreva("Mouse Ml-GMH64: Com o seu Tedge ML-GMH64 encontre o que você está",
		" procurando em um único dispositivo com a melhor tecnologia.\n",
		"Por Apenas: R$ 40,00 \n---------------\n")
		escreva("Monitor Ultrawide 29: Trabalhe em mais de um relatório de uma vez só,",
		" sem precisar alternar de janelas toda vez.\n",
		"Por Apenas: R$ 1200,00 \n---------------\n")
		escreva("Teclado Mecânico Knup: Este teclado Knup de alto desempenho permite que",
		" você desfrute de horas ilimitadas de jogos.\n",
		"Por Apenas: R$ 150,00 \n---------------\n")	

		escreva("Deseja voltar a listagem de produtos ?\nDigite 's' ou 'n': ")
		leia(decisao)

		se (decisao == "s" ou decisao == "S"){
			escreva("Voltando a listagem de produtos...")
			u.aguarde(1000)
			limpa()
			listaProdutos()
		}  senao se (decisao == "n" ou decisao == "N"){
			limpa()
			listaComputadores()
		} senao{
			escreva("Algo está errado. Tente Novamente!\n")
			listaComputadores()
		}
	}

	funcao listaHardware() 
	{
		cadeia decisao
		
		escreva("Hd Externo 4TB: Um HD externo oferece mais espaço de armazenamento para",
		"guardar os seus dados.\n",
		"Por Apenas: R$ 200,00 \n---------------\n")
		escreva("Cabo Usb 2 Metros: Conector que permite conectar diferentes elementos através do", 
		" Universal Serial Bus.\n",
		"Por Apenas: R$ 10,00 \n---------------\n")
		escreva("Cabo Hdmi 1 Metro: Cabo HDMI Premium com conectores banhados à ouro 24k, protegido", 
		" com blindagem , garantindo maior durabilidade, evitando interferências e perda de qualidade.\n",
		"Por Apenas: R$ 25,00 \n---------------\n")
		
		escreva("Deseja voltar a listagem de produtos ?\nDigite 's' ou 'n': ")
		leia(decisao)

		se (decisao == "s" ou decisao == "S"){
			escreva("Voltando a listagem de produtos...")
			u.aguarde(1000)
			limpa()
			listaProdutos()
		} senao se (decisao == "n" ou decisao == "N"){
			limpa()
			listaHardware()
		} senao{
			escreva("Algo está errado. Tente Novamente!\n")
			listaHardware()
		}
	}

	funcao listaConforto()
	{
		cadeia decisao
		
		escreva("Cadeira Gamer Moobx Gt:  As cadeiras GT RACER da MoobX são a opção ideal", 
		"para os games mais desafiadores e irados. Sinta a adrenalina a cada jogo!\n",
		"Por Apenas: R$ 450,00 \n---------------\n")
		escreva("Mesa Escritório:A nova linha de mesas para escritórios da ",
		"Kappesberg trouxe muitas novidades para o seu espaço de trabalho.", 
		"Deixe seu ambiente de trabalho com espaço e com organização.\n",
		"Por Apenas: R$ 500,00 \n---------------\n")
		escreva("Caneca Stanley: O modelo, que está disponível na cor preto fosco e oferece capacidade para 709ml,",
		" faz parte da linha Classic e apresenta uma qualidade surpreendente.\n",
		"Por Apenas: R$ 100,00 \n---------------\n")

		escreva("Deseja voltar a listagem de produtos ?\nDigite 's' ou 'n': ")
		leia(decisao)

		se (decisao == "s" ou decisao == "S"){
			escreva("Voltando a listagem de produtos...")
			u.aguarde(1000)
			limpa()
			listaProdutos()
		} senao se (decisao == "n" ou decisao == "N"){
			limpa()
			listaConforto()
		} senao{
			escreva("Algo está errado. Tente Novamente!\n")
			listaConforto()
		}
=======
		//Menu de produtos
		//poema
		escreva("oi")
>>>>>>> 7abc351b4341d853e7390314cf6c996b64882eb3
	}
	
	funcao vitrineProdutos()
	{
		//Mostrar todos produtos Com desenho no Console
	}

	funcao centralCompras()
	{
		cadeia artigoComputador, artigoPecas, artigoConforto
		inteiro monitor, mouse, teclado
		inteiro hdExterno, caboUsb, caboHdmi
		inteiro cadeira, mesa, caneca
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
		escreval("9 - Sair")
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
			caso '9' :
				finalizar()
			pare
			caso contrario :
				opcaoInvalida()
				login()
		}      		
     }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
<<<<<<< HEAD
 * @POSICAO-CURSOR = 758; 
=======
 * @POSICAO-CURSOR = 362; 
>>>>>>> 7abc351b4341d853e7390314cf6c996b64882eb3
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */