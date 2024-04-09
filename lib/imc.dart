// Importa os pacotes necessários do Flutter
import 'package:flutter/material.dart';

// Importa as classes das telas que serão navegadas a partir desta tela principal
import 'cadastroprodutos.dart';
import 'cadastrousuario.dart';
import 'contador.dart';

// Define a classe Principal como um StatefulWidget
class Principal extends StatefulWidget {
  const Principal({super.key});

  // Sobrescreve o método createState para retornar uma instância da classe _HomePageState
  @override
  State<Principal> createState() => _HomePageState();
}

// Classe privada que gerencia o estado da tela principal
class _HomePageState extends State<Principal> {
  // Método que constrói a interface da tela principal
  @override
  Widget build(BuildContext context) {
    // Retorna um Scaffold, que é a estrutura básica de uma tela no Flutter
    return Scaffold(
      // Define a barra de aplicativo com um título centralizado
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),

      // Corpo da tela, que é um SingleChildScrollView para permitir rolagem
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Ícone e texto de título da aplicação
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.deepOrangeAccent,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            // Botões para navegar para outras telas
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                  child: const Text("IMC"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Imc()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Contador"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Contador()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Cadastro Usuario"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CadastroUsuario()),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text("Cadastro de Produtos"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CadastroProdutos()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
