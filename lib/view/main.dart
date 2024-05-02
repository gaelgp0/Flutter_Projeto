import 'package:flutter/material.dart';
import "imagem.dart";
import 'input.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gasolina ou Álcool",
      debugShowCheckedModeBanner: false,
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  var gasolinapreco = new MoneyMaskedTextController();
  var alcoolpreco = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: ListView(
        children: [
          CalculaPreco(),
          Input(combustivel: "Gasolina", preco: gasolinapreco),
          Input(combustivel: "Álcool", preco: alcoolpreco),
        ],
      ),
    );
  }
}
