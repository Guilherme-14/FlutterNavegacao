// Importa o pacote flutter/material.dart, que contém widgets e classes para criar interfaces de usuário no estilo Material Design.
import 'package:flutter/material.dart';

// Função principal que inicializa o aplicativo.
void main() {
  // Executa o aplicativo passando uma instância de CadastroProdutos como raiz.
  runApp(const CadastroProdutos());
}

// Classe CadastroProdutos que é um StatelessWidget, representando a aplicação.
class CadastroProdutos extends StatelessWidget {
  const CadastroProdutos({super.key});

  // Método build que cria a interface do aplicativo.
  @override
  Widget build(BuildContext context) {
    // Retorna um MaterialApp, que é a raiz da aplicação.
    return const MaterialApp(
      // Desativa a faixa de depuração no canto superior direito da tela.
      debugShowCheckedModeBanner: false,
      // Define a tela inicial da aplicação como Home.
      home: const Home(),
    );
  }
}

// Classe Home que é um StatefulWidget, representando a tela principal do aplicativo.
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// Classe _HomeState que estende State<Home>, gerenciando o estado da tela Home.
class _HomeState extends State<Home> {
  // Controladores de texto para os campos de usuário e senha.
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  // Variável para armazenar a mensagem de informação.
  String _textoInfo = "Informe seus dados!";

  // Método para cadastrar o usuário.
  void _cadastrarUsuario(){
    setState(() {
      String usuario = usuarioController.text;
      String senha = senhaController.text;

      if(senha.isEmpty){
        _textoInfo = "Informe os dados corretamente!";
      }
      else if(usuario.isEmpty){
        _textoInfo = "Informe os dados corretamente!";
      }
      else{
        setState(() {
          _textoInfo = "Dados cadastrados com sucesso!";
          usuarioController.text ="";
          senhaController.text = "";
        });
      }
    });
  }

  // Método para limpar os campos de texto e a mensagem de informação.
  void _limparTela(){
    usuarioController.text = "";
    senhaController.text = "";
    setState((){
      _textoInfo = "";
    });
  }

  // Método build que cria a interface da tela.
  @override
  Widget build(BuildContext context) {
    // Retorna um Scaffold, que é a estrutura básica da tela.
    return Scaffold(
      // Barra de aplicativo.
        appBar: AppBar(
          // Define a cor de fundo da barra de aplicativo.
          backgroundColor: Colors.purpleAccent,
          // Título da barra de aplicativo.
          title: Text("Cadastro de Usuario"),
          // Centraliza o título na barra de aplicativo.
          centerTitle: true,
          // Ícone de limpar tela na barra de aplicativo.
          actions: <Widget>[
            IconButton(
                onPressed: _limparTela,
                icon: Icon(Icons.refresh)
            ),
          ],
        ),
        // Corpo da tela, permitindo rolar verticalmente.
        body: SingleChildScrollView(
        // Define o preenchimento interno do widget.
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
    // Coluna de widgets para organizar verticalmente.
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
    // Ícone de usuário.
    const Icon(
    Icons.person,
    size: 125.0,
    color: Colors.purpleAccent,
    ),
    // Campo de texto para o usuário.
    TextField(
    keyboardType: TextInputType.text,
    // Estilo do rótulo do campo de texto.
    decoration: InputDecoration(
    labelText: "Usuario:",
    labelStyle: TextStyle(color: Colors.purpleAccent)
    ),
    // Alinha o texto centralmente.
    textAlign: TextAlign.center,
    // Estilo do texto do campo de texto.
    style: TextStyle(fontSize: 25.0),
    // Controlador de texto para o campo de usuário.
    controller: usuarioController,
    ),
    // Campo de texto para a senha.
    TextField(
    obscureText: true,
    keyboardType: TextInputType.text,
    // Estilo do rótulo do campo de texto.
    decoration: InputDecoration(
    labelText: "Senha:",
    labelStyle: TextStyle(color: Colors.purpleAccent)
    ),
    // Alinha o texto centralmente.
    textAlign: TextAlign.center,
    // Estilo do texto do campo de texto.
    style: TextStyle(fontSize: 25.0),
    // Controlador de texto para o campo de senha.
    controller: senhaController,
    ),
    // Espaçamento entre os campos de texto e
