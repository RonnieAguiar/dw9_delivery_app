# Delivery App
Aplicativo desenvolvido durante o **Dart Week 2023**, pela [Academia do Flutter](academiadoflutter.com.br) com o [Rodrigo Rhaman](https://github.com/rodrigorahman), na semana de  29 de janeiro a 05 de fevereiro.

Foi desenvolvido um aplicativo de pedido de lanche VakinhaBurger. Usamos várias dependências que foram novidades ao meu conhecimento prévio. Dentre elas destaco as que achei mais interessante, sem desmerecer as demais pois nenhuma considero trivial.
  - Gerencia de estado usando o Bloc
  - Validação dos Inputs com o validatorless

## Funcionalidaes
  ### Splash Page
  - Possui botão para ir para Home Page

  ### Home Page
  - Obtem dados dos lanches disponíveis através do json rest server
  - Lista todos os lanches
  - Cada lanche permite abrir detalhes que lhe corresponde
  - Botão "Ver sacola" é exibido apenas se há lanche na sacola, e já totaliza o valor do pedido. Tal botão direciona a tela de autenticação caso não tenha usuário logado ou, se houve usuário logado, direciona a tela de carrinho.

  ### Detalhes do lanche
  - Possui botão de incrementar e decrementar a quantidade
  - Possui botão de adicionar a quantidade selecionada e totaliza o valor do item

  ### Carrinho
  - Exibe todos os itens da sacola. Para cada iten é possível incrementar e decrementar a quantidade do item. 
  - Total do pedido é atualizado conforme os incrementos/decrementos
  - Campos de endereço, cpf, e forma de pagamento obrigatórios

  ### Finalizado
  - Exibe mensagem de pedido concuído e botão que retorna a Home permitindo novo pedido.

## Packages usados
  - dio
  - provider
  - intl
  - loading_animation_widget
  - top_snackbar_flutter
  - bloc
  - flutter_bloc
  - equatable
  - match
  - auto_size_text
  - shared_preferences
  - validatorless
  - flutter_awesome_select


