programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		//Apenas chamar logo e login
		logo()
		login()
	}
	
	funcao logo ()
	{
		//Apenas Logo da loja em FOR
		escreva("Logo em For")
	}
		
	funcao login()
	{
		//Validar acesso
		menuPrincipal()
	}
	
	funcao menuPrincipal()
	{
		//opções de menu
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
=======
		//Menu de produtos
>>>>>>> a2797fb9f67c7b32a0256c68c2fcbd2561add1d7
	}
	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
<<<<<<< HEAD
 * @POSICAO-CURSOR = 380; 
=======
 * @POSICAO-CURSOR = 336; 
>>>>>>> a2797fb9f67c7b32a0256c68c2fcbd2561add1d7
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */