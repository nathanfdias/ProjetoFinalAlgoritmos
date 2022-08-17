programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> tx
	inclua biblioteca Graficos --> g
	inclua biblioteca Mouse --> mo
	inclua biblioteca Teclado --> tl
	inclua biblioteca Sons --> msc

	const inteiro tamanho = 9
	cadeia vetorUsuarios[tamanho] = {"Administrador", "LEANDRO", "POEMA", "NATHAN", "BARBARA", "ANTHONY", "", "", ""}
	cadeia vetorSenhas[tamanho] = {"admin", "L123", "P123", "N123", "M123", "B123", "", "", ""}
	cadeia usuario, senha
	caracter opcao = '0'
	
	funcao inicio()
	{	
		somLogin()
	}
	
	funcao logo ()
	{
		const cadeia linha ="*"//para caso de alteração no símbolo impresso, muda apenas 1x
		inteiro i, j, k
		
		para(i = 0; i<8; i++){
			escreva(linha, " ")
		}
		para(j=0; j<3; j++){
			lescreva( linha)
			para(k=0; k<13; k++){
				escreva(" ")
				}
			escreva(linha)
		}
		escreval("")
		para(i=0; i<8; i++){
			escreva(linha, " ")
			}
		escreval("")
		para(i=0; i<1; i++){
			para(k=0; k<6; k++){
				escreva(" ")
			}
			escreval(linha + " " + linha)
		}
		para (i=0; i<=6;i++){
			para (k=0; k<1;k++){
				escreva(" ")
			}
			escreva(linha)
			
		}
		barraMenu("INFOLUX COMPUTADORES")
		barraMenu("  SEMPRE CONECTADO  ")
		entrarNaLoja()
	}

	funcao entrarNaLoja ()
	{
		lescreval("Deseja entrar na loja? ")
		escreval("1 - Sim ")
		escreval("2 - Não")
		escreval("3 - Sair")
		lescreva("=> ")
		leias(opcao)	

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
		leias(opcao)
	
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
		leias(opcao)

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
				opcaoInvalida()	
				u.aguarde(1000)
				limpa()
				menuPrincipal()
			pare	
		}
	}

	funcao listaComputadores() 
	{
		lescreval("Código: 1")
		escreval("Nome: Mouse Ml-GMH64")
		escreval("Descrição: Com o seu Tedge ML-GMH64 encontre o que você está"+
		" procurando em um único dispositivo com a melhor tecnologia.")
		escreval("Quantidade: 30 ")
		escreval("Valor: R$ 40,00 ")
		escreval("")

		escreval("Código: 2")
		escreval("Nome: Monitor Ultrawide 29") 
		escreval("Descrição: Trabalhe em mais de um relatório de uma vez só,"+
		" sem precisar alternar de janelas toda vez.")
		escreval("Quantidade: 10 ")
		escreval("Valor: R$ 1200,00 ")
		escreval("")

		escreval("Código: 3")
		escreval("Nome: Teclado Mecânico Knup")
		escreval("Descrição: Este teclado Knup de alto desempenho permite que"+
		" você desfrute de horas ilimitadas de jogos.")
		escreval("Quantidade: 25")
		escreval("Valor: R$ 150,00 ")	
		escreval("")

		escreva("Deseja exibir a imagem do produto? ")
		lescreval("1 - Sim")
		escreval("2 - Não")
		escreva("=> ")
		leias(opcao)

		se (opcao == '1'){
			lescreval("Informe o código do item: ")
			escreva("=> ")
			leias(opcao)
			lescreval("Pressione qualquer tecla para fechar a imagem!")
			
			escolha (opcao){ 
				caso '1' : 
					imagem("img/mouseProjeto.png")
				pare
				caso '2' : 
					imagem("img/MonitorProjeto.png")
				pare
				caso '3' : 
					imagem("img/tecladoProjeto.png")
				pare
				caso contrario : 
					opcaoInvalida()
					listaComputadores()		
			}
		}
			lescreval("Deseja voltar ao menu?")
			escreval("1 - Sim")
			escreval("2 - Sair")
			escreva("=> ")
			leias(opcao)
	
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
		lescreval("Código: 1")	
		escreval("Nome: Hd Externo 4TB")
		escreval("Descrição: Um HD externo oferece mais espaço de armazenamento para"+
		" guardar os seus dados.")
		escreval("Quantidade: 5 ")
		escreval("Valor: R$ 200,00 ")
		escreval("")

		escreval("Código: 2")
		escreval("Nome: Cabo Usb 2 Metros")
		escreval("Descrição: Conector que permite conectar diferentes elementos através do"+
		" Universal Serial Bus.")
		escreval("Quantidade: 40 ")
		escreval("Valor: R$ 10,00 ")
		escreval("")

		escreval("Código: 3")
		escreval("Nome: Cabo Hdmi 1 Metro ")
		escreval("Descrição: Cabo HDMI Premium com conectores banhados à ouro 24k, protegido"+ 
		" com blindagem , garantindo maior durabilidade, evitando interferências e perda de qualidade.")
		escreval("Quantidade: 15 ")
		escreval("Valor: R$ 25,00 ")
		escreval("")

		escreva("Deseja exibir a imagem do produto? ")
		lescreval("1 - Sim")
		escreval("2 - Não")
		escreva("=> ")
		leias(opcao)

		se (opcao == '1'){
			lescreval("Informe o código do item: ")
			escreva("=> ")
			leias(opcao)
			lescreval("Pressione qualquer tecla para fechar a imagem!")
			
			escolha (opcao){ 
				caso '1' : 
					imagem("img/hdExternoProjeto.png")
					escreval("")
				pare
				caso '2' : 
					imagem("img/Usbprojeto.png")
				pare
				caso '3' : 
					imagem("img/HDMIprojeto.png")
				pare
				caso contrario : 
					opcaoInvalida()
					listaHardware()		
			}
		}	
			lescreval("Deseja voltar ao menu?")
			escreval("1 - Sim")
			escreval("2 - Sair")
			escreva("=> ")
			leias(opcao)
	
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
		lescreval("Código: 1")
		escreval("Nome: Cadeira Gamer Moobx Gt")
		escreval("Descrição: As cadeiras GT RACER da MoobX são a opção ideal"+
		"para os games mais desafiadores e irados. Sinta a adrenalina a cada jogo!")
		escreval("Quantidade: 10 ")
		escreval("Valor: R$ 450,00 ")
		escreval("")

		escreval("Código: 2")
		escreval("Nome: Mesa Escritório ")
		escreval("Descrição: A nova linha de mesas para escritórios da "+
		"Kappesberg trouxe muitas novidades para o seu espaço de trabalho."+ 
		"Deixe seu ambiente de trabalho com espaço e com organização. ")
		escreval("Quantidade: 5")
		escreval("Valor: R$ 500,00 ")
		escreval("")

		escreval("Código: 3")
		escreval("Nome: Caneca Stanley")
		escreval("Descrição: O modelo, que está disponível na cor preto fosco e oferece capacidade para 709ml,"+
		" faz parte da linha Classic e apresenta uma qualidade surpreendente.")
		escreval("Quantidade: 80 ")
		escreval("Valor: R$ 100,00 ")
		escreval("")

		escreva("Deseja exibir a imagem do produto? ")
		lescreval("1 - Sim")
		escreval("2 - Não")
		escreva("=> ")
		leias(opcao)

		se (opcao == '1'){
			lescreval("Informe o código do item: ")
			escreva("=> ")
			leias(opcao)
			lescreval("Pressione qualquer tecla para fechar a imagem!")
			
			escolha (opcao){ 
				caso '1' : 
					imagem("img/cadeiraProjeto.png")
					escreval("")
				pare
				caso '2' : 
					imagem("img/mesaProjeto.png")
				pare
				caso '3' : 
					imagem("img/canecoProjeto.png")
				pare
				caso contrario : 
					opcaoInvalida()
					listaHardware()		
			}
		}	
			lescreval("Deseja voltar ao menu?")
			escreval("1 - Sim")
			escreval("2 - Sair")
			escreva("=> ")
			leias(opcao)
	
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

	funcao imagem(cadeia arquivo)
	{		
		inteiro img = g.carregar_imagem(arquivo)

		
		g.iniciar_modo_grafico(verdadeiro)	
		g.ocultar_borda_janela()
		g.definir_dimensoes_janela(800, 600)
		g.desenhar_imagem(0, 0, img)
	     g.renderizar()
	     
	     enquanto (nao tl.alguma_tecla_pressionada()){ 
	    		u.aguarde(10)
	     }
	     g.encerrar_modo_grafico()
	}

	funcao som(cadeia arquivo)
	{
		inteiro musica = msc.carregar_som(arquivo)
		msc.reproduzir_som(musica, falso)
		msc.definir_volume(50)
		u.aguarde(100)
		msc.interromper_som(musica)
		msc.liberar_som(musica)
	}

	funcao caracter leias(caracter opcaoMenu)
	{
		leia(opcao)
		som("som/chimbal.mp3")

		retorne opcaoMenu	
	}

	funcao somLogin()
	{
		inteiro musica = msc.carregar_som("som/login.mp3")
		msc.reproduzir_som(musica, verdadeiro)
		msc.definir_volume(40)
		logo()
		msc.interromper_som(musica)
		msc.liberar_som(musica)
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2605; 
 * @DOBRAMENTO-CODIGO = [15, 20, 58, 88, 113, 144, 186, 262, 378, 339, 417, 434, 444, 452, 462, 467, 472, 477, 482, 488];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */