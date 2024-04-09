import 'package:flutter/material.dart';
// Esta linha importa o pacote material.dart do Flutter, que contém widgets e classes para implementar o Material Design.
import 'principal.dart';
//Importa o arquivo principal.dart, que provavelmente contém a definição da classe Principal(), que será usada como a tela inicial do aplicativo.
void main() {
  runApp(const MyApp());
}
//A função main() é o ponto de entrada do aplicativo Flutter. Ela chama runApp(), que inicializa o aplicativo com o widget MyApp().
class MyApp extends StatelessWidget {
  const MyApp({super.key});
//// class MyApp extends StatelessWidget { }: Esta é a definição da classe MyApp, que é um widget sem estado (StatelessWidget). Isso significa que não há dados internos na classe que mudam com o tempo.
// //
// // const MyApp({super.key});: Este é o construtor da classe MyApp. Ele define um construtor constante que pode receber um parâmetro key, que é opcional. No entanto, a linha está um pouco incorreta.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Principal(),
    );
  }
  // Este é o método build() da classe MyApp, que é chamado pelo framework Flutter para construir a interface de usuário do aplicativo. Ele retorna um widget MaterialApp, que é a raiz da hierarquia de widgets do aplicativo.
//Esta linha desativa a faixa de debug no canto superior direito da tela. É útil remover isso em uma versão de produção do aplicativo.
//Define a tela inicial do aplicativo como uma instância da classe Principal(), que provavelmente está definida no arquivo principal.dart
}
