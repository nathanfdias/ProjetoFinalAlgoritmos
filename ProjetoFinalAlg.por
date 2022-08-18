programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> tx
	inclua biblioteca Graficos --> g
	inclua biblioteca Mouse --> mo
	inclua biblioteca Teclado --> tl
	inclua biblioteca Sons --> msc
	inclua biblioteca Tipos --> t

	cadeia vetorUsuarios[] = {"ADMIN", "LEANDRO", "POEMA", "NATHAN", "BARBARA", "ANTHONY"}
	cadeia vetorSenhas[] = {"admin", "L123", "P123", "N123", "B123", "A123"}
	cadeia usuario, senha
	caracter opcao = '0'
	inteiro vetorQtdProdutos[] = {40, 10, 25, 50, 30, 20, 15, 3, 25}
	cadeia vetorProdutos[] = {"Mouse Ml-GMH64", "Monitor Ultrawide 29", "Teclado Mecânico Knup", "Cabo Usb 2 Metros", "Cabo Hdmi 1 Metro", "Hd Externo 4TB", "Cadeira Gamer Moobx Gt", "Mesa Escritório", "Caneca Stanley"}
	real vetorValor[] = {54.00, 1200.99, 199.99, 9.99, 20.00, 300.00, 850.00, 400.00, 200.00}
	cadeia vetorDescricao[] = {
		"Com o seu Tedge ML-GMH64 encontre o que você está procurando em um único dispositivo com a melhor tecnologia.", 
		"Trabalhe em mais de um relatório de uma vez só, sem precisar alternar de janelas toda vez.",
		"Este teclado Knup de alto desempenho permite que você desfrute de horas ilimitadas de jogos.",
		"Conector que permite conectar diferentes elementos através do Universal Serial Bus.",
		"Cabo HDMI Premium com conectores banhados à ouro 24k, protegido com blindagem , garantindo maior durabilidade, evitando interferências e perda de qualidade.",
		"Um HD externo oferece mais espaço de armazenamento para guardar os seus dados",
		"As cadeiras GT RACER da MoobX são a opção ideal para os games mais desafiadores e irados. Sinta a adrenalina a cada jogo!",
		"A nova linha de mesas para escritórios da Kappesberg trouxe muitas novidades para o seu espaço de trabalho. Deixe seu ambiente de trabalho com espaço e com organização.",
		"O modelo, que está disponível na cor preto fosco e oferece capacidade para 709ml, faz parte da linha Classic e apresenta uma qualidade surpreendente."
		
		}
	
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
		entrarNaLoja()
	}

	funcao entrarNaLoja ()
	{
		barraMenu("INFOLUX COMPUTADORES")
		barraMenu("  SEMPRE CONECTADO  ")
		lescreval("Selecione a opção desejada: ")
		escreval("1 - Entrar na loja ")
		escreval("2 - Sobre o sistema")
		escreval("3 - Sair")
		lescreva("=> ")
		leias(opcao)	

		escolha (opcao) 
		{
			caso '1' : 
				limpa()
				login()
			pare
			caso '3' : 
				limpa() 
				lescreval("Volte sempre que desejar!")
			pare
			caso '2' :
				limpa()
				sobre()
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
	
		para(inteiro i=0; i < 6; i++) {
			acessoPermitido = (usuario == vetorUsuarios[i] e senha == vetorSenhas[i])
			se (acessoPermitido) pare
		} 

		se (acessoPermitido){
			se (vetorUsuarios[0] == usuario){
				limpa()
				menuCadastro()
			} senao{
				limpa()
				menuPrincipal()
			}
		} senao {
			acessoInvalido()
		}		
	}

	funcao sobre()
	{
		limpa()
		barraMenu("Sobre")
		escreval("Versão 1.0 (18 de agosto de 2015)")
		lescreval("   ° Lançamento da versão.")
		lescreval("")
		
		barraMenu("Desenvolvedores")
		escreval("Anthony Barbosa - https://github.com/AnthonyBarbosa15")
		escreval("Barbara Souza - https://github.com/barbarasouzza")
		escreval("Leandro Ferraz - https://github.com/FerrazLeandro")
		escreval("Mari Barbosa - ")
		escreval("Nathan Dias - https://github.com/nathanfdias")
		escreval("Poema Bochner - https://github.com/poemabochner")

		lescreval("© 2022-2022 InfoLux. Todos os direitos reservados.")

		lescreval("Selecione a opção desejada:  ")
		escreval("1 - Tela inicial ")
		escreval("2 - Sair")
		lescreva("=> ")
		leias(opcao)	

		escolha (opcao) 
		{
			caso '1' : 
				limpa()
				entrarNaLoja()
			pare
			caso '2' : 
				limpa() 
				lescreval("Volte sempre que desejar!")
			pare
			caso contrario :
				limpa()
				opcaoInvalida()
				u.aguarde(1000)
				entrarNaLoja()
		}		
	}
	
	funcao acessoInvalido()
     {
		limpa()
		barraMenu("Login")
		lescreval("Usuário e/ou senha inválidos")
		escreval("Selecione a opção desejada:  ")
		escreval("1 - Tentar novamente")
		escreval("2 - Tela inicial")
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
		escreval("Selecione a opção desejada: ")
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
		para(inteiro i=0; i < 3; i++){
			lescreval("Código: " + (i + 1))
			escreval("Nome: " + vetorProdutos[i])
			escreval("Descrição: " + vetorDescricao[i])
			escreval("Quantidade: " + vetorQtdProdutos[i])
			escreval("Valor: " + vetorValor[i])
			escreval("")
		}

		escreva("Selecione a opção desejada: ")
		lescreval("1 - Exibir imagem do produto")
		escreval("2 - Não exibir imagem do produto")
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
			lescreval("Selecione a opção desejada:  ")
			escreval("1 - Menu")
			escreval("2 - Carrinho")
			escreval("3 - Sair")
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
					carrinho(0, 3)
				pare
				caso '3' :
					limpa()
					menuPrincipal()
				pare
				caso contrario :
					limpa()
					opcaoInvalida()
					listaComputadores()			
			}
	}

	funcao listaHardware() 
	
	{	
		inteiro controle = 0
		para(inteiro i=3; i < 6; i++){
			controle = controle + 1
			lescreval("Código: " + (controle))
			escreval("Nome: " + vetorProdutos[i])
			escreval("Descrição: " + vetorDescricao[i])
			escreval("Quantidade: " + vetorQtdProdutos[i])
			escreval("Valor: " + vetorValor[i])
			escreval("")
		}
		
		escreva("Selecione a opção desejada: ")
		lescreval("1 - Exibir imagem do produto")
		escreval("2 - Não exibir imagem do produto")
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
			lescreval("Selecione a opção desejada:  ")
			escreval("1 - Menu")
			escreval("2 - Carrinho")
			escreval("3 - Sair")
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
					carrinho(3, 6)
				pare
				caso '3' :
					limpa()
					menuPrincipal()
				pare
				caso contrario :
					limpa()
					opcaoInvalida()
					listaHardware()			
			}
	}
	
	funcao listaAcessorios()
	{
		inteiro controle = 0
		para(inteiro i=6; i < 9; i++){
			controle = controle + 1
			lescreval("Código: " + (controle))
			escreval("Nome: " + vetorProdutos[i])
			escreval("Descrição: " + vetorDescricao[i])
			escreval("Quantidade: " + vetorQtdProdutos[i])
			escreval("Valor: " + vetorValor[i])
			escreval("")
		}

		escreva("Selecione a opção desejada: ")
		lescreval("1 - Exibir imagem do produto")
		escreval("2 - Não exibir imagem do produto")
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
					listaAcessorios()		
			}
		}	
			lescreval("Selecione a opção desejada:  ")
			escreval("1 - Menu")
			escreval("2 - Carrinho")
			escreval("3 - Sair")
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
					carrinho(6, 9)
				pare
				caso '3' :
					limpa()
					menuPrincipal()
				pare
				caso contrario :
					limpa()
					opcaoInvalida()
					listaAcessorios()			
			}
	}

	funcao menuCadastro()
	{
		barraMenu("Menu Cadastro")
		escreval("Bem vindo " + usuario + "!")
		escreval("Selecione a opção desejada: ")
		escreval("1 - Alterar usuário") 
		escreval("2 - Alterar produto") 
		escreval("3 - Sair ")
		escreva("=> ")
		leias(opcao)

		escolha(opcao) {
			caso '1' :
				limpa()
				cadastroUsuario()
			pare
			caso '2' :
				limpa()
				cadastroProduto()
			pare
			caso '3' :
				limpa()
				u.aguarde(1000)
				login()
			pare
			caso contrario:
				opcaoInvalida()	
				u.aguarde(1000)
				limpa()
				menuCadastro()
			pare	
		}
	}

	funcao cadastroUsuario()
	{	
		inteiro idUsuario = 0
		barraMenu("Usuários")
		escreval("Digite o código usuário que deseja editar: ")
		para(inteiro i=0; i < 6; i++){
			escreval(i + 1 + " - " + vetorUsuarios[i])
		}
		escreva("=> ")
		leia(idUsuario)

		se ((idUsuario-1) >= 6){
			opcaoInvalida()
			cadastroUsuario()
		}

		lescreval("Digite o novo login:")
		escreva("=> ")
		leia(usuario)
		lescreval("Digite a nova senha:")
		escreva("=> ")
		leia(senha)
		
		vetorUsuarios[idUsuario - 1] = usuario
		vetorSenhas[idUsuario - 1 ] = senha

		limpa()
		lescreval("Usuário alterado com sucesso. Usuário: " + usuario + " Senha: " + senha)
		menuCadastro()
		
	}

	funcao cadastroProduto()
	{
		inteiro qtd, idProduto = 0
		cadeia produto, descricao
		real valor = 0.00
		
		barraMenu("Produtos")
		escreval("Digite o produto que deseja alterar")
		para(inteiro i=0; i < 9; i++){
			escreval(i + 1 + " - " + vetorProdutos[i])
		}
		escreva("=> ")
		leia(idProduto)

		se ((idProduto-1) >= 9){
			opcaoInvalida()
			cadastroProduto()
		}

		lescreval("Digite o novo nome:")
		escreva("=> ")
		leia(produto)
		lescreval("Digite o novo valor:")
		escreva("=> ")
		leia(valor)
		lescreval("Digite a nova quantidade:")
		escreva("=> ")
		leia(qtd)
		lescreval("Digite a nova descrição:")
		escreva("=> ")
		leia(descricao)
		
		vetorProdutos[idProduto - 1] = produto
		vetorValor[idProduto - 1] = valor
		vetorQtdProdutos[idProduto - 1] = qtd
		vetorDescricao[idProduto - 1] = descricao

		limpa()
		lescreval("Produto alterado com sucesso.")
		escreval("Nome: " + produto)
		escreval("Valor R$: " + valor)
		escreval("Quantidade: " + qtd)
		escreval("Descrição: " + descricao)
		
		menuCadastro()	
	}
	
	funcao carrinho(inteiro iniciocarrinho, inteiro fimcarrinho)
	{
		inteiro item, quant, contador =0
		real valorTotal = 0.00

		barraMenu("Carrinho")
		escreval("Digite o produto que deseja comprar:")
		para(inteiro i=iniciocarrinho; i < fimcarrinho; i++){
			contador = contador++
			escreval(contador + " - " + vetorProdutos[i])
		}
		escreval("4 - Menu")
		escreva("=> ")
		leia(item)

		se (item == 4){
			limpa()
			menuPrincipal()
		} senao se(item > 4){
			opcaoInvalida()
			carrinho(iniciocarrinho, fimcarrinho)
		}senao{
			item = item + iniciocarrinho
			lescreval("Digite a quantidade que deseja comprar:")
			escreva("=> ")
			leia(quant)
	
			enquanto (vetorQtdProdutos[item - 1] < quant){
				limpa()
				escreval("Quantidade de " + vetorProdutos[item -1] + " indisponivel no estoque.")
				escreval("Estoque disponível: " + vetorQtdProdutos[item -1])
				carrinho(iniciocarrinho, fimcarrinho)
			} 
			
			limpa()
			valorTotal = quant * vetorValor[item -1]
			escreval("Parabéns você comprou " + quant + " " +  vetorProdutos[item -1])
			escreval("Valor R$: " + valorTotal)
			vetorQtdProdutos[item - 1] = vetorQtdProdutos[item - 1] - quant
			u.aguarde(1000)
			
						
			lescreval("Selecione a opção desejada: ")
			escreval("1 - Continuar comprando")
			escreval("2 - Menu")
			escreva("=> ")
			leias(opcao)
	
			escolha(opcao) {
				caso '1':
					limpa()
					escreva("Retornando a Central Compras.")
					limpa()
					carrinho(iniciocarrinho, fimcarrinho)
				pare
				caso '2':
					limpa()
					menuPrincipal()
				pare
				caso contrario:
					opcaoInvalida()
					carrinho(iniciocarrinho, fimcarrinho)	
			}
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
	     limpa()
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
 * @POSICAO-CURSOR = 402; 
 * @DOBRAMENTO-CODIGO = [18, 253, 268, 390, 653, 671, 681, 686, 691, 696, 701, 707];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */