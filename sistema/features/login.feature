# language: pt
Funcionalidade: Autenticação por senha
  Para garantir a segurança das informações do meu sistema
  Como um usuário cadastrado
  Eu quero ter que me autenticar com uma senha antes de ter acesso ao sistema

  Cenário: Login bem sucedido
    Dado que estou na tela de Login
    Quando preencho o campo "Usuário" com "silva"
      E preencho o campo "Senha" com "segredo"
      E aperto o botão "Entrar"
    Então devo ver a tela Principal
      E devo ver a mensagem "Bem-vindo Sr. Silva!"

  Cenário: Login mal sucedido
    Dado que estou na tela de Login
    Quando preencho o campo "Usuário" com "silva"
      E preencho o campo "Senha" com "senhaerrada"
      E aperto o botão "Entrar"
    Então devo ver a mensagem "Usuário/senha inválido(s)"