# language: pt
Funcionalidade: Autenticação por senha
  Para garantir a segurança das informações do meu sistema
  Como um usuário cadastrado
  Eu quero ter que me autenticar com uma senha antes de ter acesso ao sistema

  Cenário: Login bem sucedido
    Dado que estou no página "Login"
    Quando preencho o campo "Usuário" com "silva"
    E preencho o campo "Senha" com "segredo"
    E aperto no botão "Entrar"
    Então devo ir para a página "Principal"
    E devo ver "Bem-vindo Sr. Silva!"