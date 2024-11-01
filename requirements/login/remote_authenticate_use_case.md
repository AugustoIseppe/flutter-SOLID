# Remote Authentication Use Case

> ## Caso de Sucesso

1. ✅ Sistema valida os dados
2. ✅ Sistema faz uma requisição para a URL da API de login
3. Sistema valida os dados recebidos da API
4. Sistema entrega os dados da conta do usuário

> ## Exceção - URL inválida (HTTP 404)

1. ✅ Sistema retorna uma mensagem de erro inesperado

> ## Exceção - Dados inválidos (HTTP 400)

1. ✅ Sistema retorna uma mensagem de erro inesperado

> ## Exceção - Resposta inválida

1. Sistema retorna uma mensagem de erro inesperado

> ## Exceção - Falha no servidor (HTTP 500)

1. ✅ Sistema retorna uma mensagem de erro inesperado

> ## Credeenciais inválidas

1. Sistema retorna uma mensagem de erro de credenciais inválidas
