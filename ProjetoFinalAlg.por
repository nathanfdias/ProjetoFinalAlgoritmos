programa
{
	
	funcao inicio()
	{
		logo()
	}
	
	funcao logo ()
	{
		//Apenas Logo da loja em FOR e chamar login
		barramenu("Logo")
		entrarNaLoja()
	}

	funcao entrarNaLoja ()
	{
		caracter opcao

		barramenu("Bem vindo!")
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
				limpa() 
				lescreval("Programa finalizado")
			pare
			caso contrario :
				limpa()  
				lescreval("Opção inválida, tente novamente!")
				entrarNaLoja()
		}		
	}
		
	funcao login()
	{	
		const cadeia usuarioLeandro = "Leandro", senhaLeandro = "123456",
				   usuarioNathan = "Nathan", senhaNathan = "123456",
				   usuarioPoema = "Poema", senhaPoema = "123456",
				   usuarioMari = "Mari", senhaMari = "123456",
				   usuarioAnthony = "Anthony", senhaAnthony = "123456"
		cadeia usuario, senha
		caracter opcao

		barramenu("Login")
		escreva("Usuário: ")
		leia(usuario)
		escreva("Senha: ")
		leia(senha)
		escreval("")
	
		se ((usuario == usuarioLeandro e senha == senhaLeandro) ou 
		   (usuario == usuarioNathan e senha == senhaNathan) ou
		   (usuario == usuarioNathan e senha == senhaNathan) ou
		   (usuario == usuarioPoema e senha == senhaPoema) ou
		   (usuario == usuarioMari e senha == senhaMari) ou
		   (usuario == usuarioAnthony e senha == senhaAnthony))
		{
			limpa()
			menuPrincipal()			
		}
		senao {
			limpa()
			barramenu("Login")
			lescreval("Usuário ou senha inválidos, deseja tentar novamente?")
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
					limpa()
					lescreval("Programa finalizado")
				pare
				caso contrario :
					limpa()
					escreval("Opção inválida")
			} 
		}			
	}
	
	funcao menuPrincipal()
	{
		//opções de menu
		barramenu("Menu principal")
		produtos()
	}
	
	funcao produtos()
	{
		//Menu de produtos
		barramenu("Menu de produtos")
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

	funcao barramenu(cadeia texto)
	{
		lescreval("::::::::::: " + texto + " :::::::::::")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2258; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */