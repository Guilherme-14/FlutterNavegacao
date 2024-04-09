// Importa o pacote flutter/material.dart, que contém widgets e classes para criar interfaces de usuário no estilo Material Design.
import 'package:flutter/material.dart';

// Função principal que inicializa o aplicativo.
void main() {
  // Executa o aplicativo passando uma instância de Contador como raiz.
  runApp(const Contador());
}

// Classe Contador que é um StatelessWidget, representando a aplicação.
class Contador extends StatelessWidget {
  const Contador({super.key});

  // Método build que cria a interface do aplicativo.
  @override
  Widget build(BuildContext context) {
    // Retorna um MaterialApp, que é a raiz da aplicação.
    return MaterialApp(
      // Define o título da aplicação.
      title: 'Flutter Demo',
      // Define o tema da aplicação.
      theme: ThemeData(
        // Define o esquema de cores a partir de uma cor semente.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        // Habilita o uso do Material3.
        useMaterial3: true,
      ),
      // Define a tela inicial da aplicação como MyHomePage.
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Classe MyHomePage que é um StatefulWidget, representando a tela principal do aplicativo.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Título da tela.
  final String title;

  // Método createState que cria o estado associado à tela MyHomePage.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Classe _MyHomePageState que estende State<MyHomePage>, gerenciando o estado da tela MyHomePage.
class _MyHomePageState extends State<MyHomePage> {
  // Variável para armazenar o valor do contador.
  int _counter = 0;

  // Método para incrementar o contador.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Método para decrementar o contador.
  void _decrementCounter() {
    setState(() {
      _counter--;
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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Título da barra de aplicativo.
        title: Text(widget.title),
      ),
      // Corpo da tela, centralizando os widgets verticalmente.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Texto informativo sobre o número de vezes que o botão foi pressionado.
            const Text(
              'You have pushed the button this many times:',
            ),
            // Valor atual do contador.
            Text(
              '$_counter',
              // Estilo do texto usando o tema do contexto.
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            // Botões para incrementar e decrementar o contador.
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Botão para incrementar o contador.
                ElevatedButton(
                    onPressed: _incrementCounter, child: const Icon(Icons.add)),
                // Botão para decrementar o contador.
                ElevatedButton(
                    onPressed: _decrementCounter, child: const Icon(Icons.remove)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
