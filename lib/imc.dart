// Importa o pacote flutter/material.dart, que contém widgets e classes para criar interfaces de usuário no estilo Material Design.
import 'package:flutter/material.dart';

// Importa os arquivos necessários das telas que serão navegadas a partir desta tela principal
import 'imc.dart';

// Define a classe Principal como um StatefulWidget, permitindo que sua interface seja atualizada em resposta a interações do usuário ou a mudanças nos dados.
class Principal extends StatefulWidget {
  const Principal({super.key}); // Define um construtor constante para a classe Principal.

  // Cria e retorna uma instância da classe State responsável por gerenciar o estado da tela Principal.
  @override
  State<Principal> createState() => _HomePageState();
}

// Define a classe _HomePageState, que estende State<Principal> e gerencia o estado da tela Principal.
class _HomePageState extends State<Principal> {
  // Define o método build para construir a interface de usuário da tela Principal.
  @override
  Widget build(BuildContext context) {
    // Retorna um Scaffold, que é uma estrutura básica para layouts de aplicativos com Material Design.
    return Scaffold(
      // Define a barra de aplicativos.
      appBar: AppBar(
        // Define o título da barra de aplicativos.
        title: Text("MENU"),
        // Centraliza o título na barra de aplicativos.
        centerTitle: true,
        // Define a cor de fundo da barra de aplicativos.
        backgroundColor: Colors.deepOrangeAccent,
      ),

      // Cria um widget que permite rolar a tela verticalmente.
      body: SingleChildScrollView(
        // Define o preenchimento interno do widget.
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        // Cria uma coluna de widgets.
        child: Column(
          // Alinha os widgets filhos na horizontal ao esticar.
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // Define os widgets filhos da coluna.
          children: <Widget>[
            // Cria um ícone.
            const Icon(
              Icons.add_business_sharp,
              // Define o tamanho do ícone.
              size: 120.0,
              // Define a cor do ícone.
              color: Colors.deepOrangeAccent,
            ),
            // Cria um texto.
            Text(
              // Define o conteúdo do texto.
              "Aplicação Principal",
              // Alinha o texto no centro.
              textAlign: TextAlign.center,
              // Define o estilo do texto.
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            // Cria um texto vazio para adicionar espaçamento.
            Text(
              // Conteúdo vazio.
              "",
              // Alinha o texto no centro.
              textAlign: TextAlign.center,
              // Define o estilo do texto.
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            // Cria uma coluna para os botões.
            Column(
              // Alinha os botões na horizontal ao esticar.
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // Define os widgets filhos da coluna.
              children: <Widget>[
                // Cria um botão elevado para calcular o IMC.
                ElevatedButton(
                  // Define o texto do botão.
                  child: const Text("IMC"),
                  // Define a função a ser executada quando o botão for pressionado.
                  onPressed: () {
                    // Navega para a tela de cálculo do IMC.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Imc()),
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
