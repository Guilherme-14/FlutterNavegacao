import 'package:flutter/material.dart'; // Importa o pacote flutter/material.dart, que contém widgets e classes para criar interfaces de usuário no estilo Material Design.
import 'cadastroprodutos.dart'; // Importa o arquivo 'cadastroprodutos.dart', que provavelmente contém a definição da classe para cadastrar produtos.
import 'cadastrousuario.dart'; // Importa o arquivo 'cadastrousuario.dart', que provavelmente contém a definição da classe para cadastrar usuários.
import 'Imc.dart'; // Importa o arquivo 'imc.dart', que provavelmente contém a definição da classe para calcular o índice de massa corporal.
import 'contador.dart'; // Importa o arquivo 'contador.dart', que provavelmente contém a definição da classe para um contador.

class Principal extends StatefulWidget { // Define a classe Principal como um StatefulWidget, permitindo que sua interface seja atualizada em resposta a interações do usuário ou a mudanças nos dados.
  const Principal({super.key}); // Define um construtor constante para a classe Principal.

  @override
  State<Principal> createState() => _HomePageState(); // Cria e retorna uma instância da classe State responsável por gerenciar o estado da tela Principal.
}

class _HomePageState extends State<Principal> { // Define a classe _HomePageState, que estende State<Principal> e gerencia o estado da tela Principal.
  @override
  Widget build(BuildContext context) { // Define o método build para construir a interface de usuário da tela Principal.
    return Scaffold( // Retorna um Scaffold, que é uma estrutura básica para layouts de aplicativos com Material Design.
      appBar: AppBar( // Define a barra de aplicativos.
        title: Text("MENU"), // Define o título da barra de aplicativos.
        centerTitle: true, // Centraliza o título na barra de aplicativos.
        backgroundColor: Colors.deepOrangeAccent, // Define a cor de fundo da barra de aplicativos.
      ),

      body: SingleChildScrollView( // Cria um widget que permite rolar a tela verticalmente.
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Define o preenchimento interno do widget.
        child: Column( // Cria uma coluna de widgets.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os widgets filhos na horizontal ao esticar.
          children: <Widget>[ // Define os widgets filhos da coluna.
            const Icon( // Cria um ícone.
              Icons.add_business_sharp, // Define o ícone como 'add_business_sharp'.
              size: 120.0, // Define o tamanho do ícone.
              color: Colors.deepOrangeAccent, // Define a cor do ícone.
            ),
            Text( // Cria um texto.
              "Aplicação Principal", // Define o conteúdo do texto.
              textAlign: TextAlign.center, // Alinha o texto no centro.
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Define o estilo do texto.
            ),
            Text( // Cria um texto vazio para adicionar espaçamento.
              "", // Conteúdo vazio.
              textAlign: TextAlign.center, // Alinha o texto no centro.
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0), // Define o estilo do texto.
            ),
            Column( // Cria uma coluna para os botões.
              crossAxisAlignment: CrossAxisAlignment.stretch, // Alinha os botões na horizontal ao esticar.
              children: <Widget>[ // Define os widgets filhos da coluna.
                ElevatedButton( // Cria um botão elevado para calcular o IMC.
                  child: const Text("IMC"), // Define o texto do botão.
                  onPressed: () { // Define a função a ser executada quando o botão for pressionado.
                    Navigator.push( // Navega para a tela de cálculo do IMC.
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Imc()),
                    );
                  },
                ),
                ElevatedButton( // Cria um botão elevado para o contador.
                  child: const Text("Contador"), // Define o texto do botão.
                  onPressed: () { // Define a função a ser executada quando o botão for pressionado.
                    Navigator.push( // Navega para a tela do contador.
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Contador()),
                    );
                  },
                ),
                ElevatedButton( // Cria um botão elevado para o cadastro de usuários.
                  child: const Text("Cadastro Usuario"), // Define o texto do botão.
                  onPressed: () { // Define a função a ser executada quando o botão for pressionado.
                    Navigator.push( // Navega para a tela de cadastro de usuários.
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CadastroUsuario()),
                    );
                  },
                ),
                ElevatedButton( // Cria um botão elevado para o cadastro de produtos.
                  child: const Text("Cadastro de Produtos"), // Define o texto do botão.
                  onPressed: () { // Define a função a ser executada quando o botão for pressionado.
                    Navigator.push( // Navega para a tela de cadastro de produtos.
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CadastroProdutos()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
