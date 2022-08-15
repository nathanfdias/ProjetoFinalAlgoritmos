programa
{
	
	funcao inicio()
	{
		//Apenas chamar logo
		logo()
	}
	
	funcao logo ()
	{
		//Apenas Logo da loja em FOR e chamar login
		escreval("Logo em For")
		entrarNaLoja()
	}

	funcao entrarNaLoja ()
	{
		caracter opcao
		
		lescreval("Deseja entrar na loja? ")
		escreval("1 - Sim ")
		escreval("2 - Não")
		lescreva("Digite a opção desejada: ")
		leia(opcao)	

		escolha (opcao) 
		{
			caso '1' : 
				login()
			pare
			caso '2' : 
				lescreval("Volte sempre!")
			pare
			caso contrario : 
				lescreval("opção inválida, tente novamente!")
				login()
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

		escreval("****** Tela Login ******")
		escreva("Login: ")
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
			lescreval("Usuário ou senha inválidos tente novamente!")
			login()
		}			
	}
	
	funcao menuPrincipal()
	{
		//opções de menu
		escreval("Menu principal")
		produtos()
	}
	
	funcao produtos()
	{
		//Menu de produtos
		escreval("Menu de produtos")
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
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 572; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */