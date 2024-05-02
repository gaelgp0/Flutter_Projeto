import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CalculaPreco extends StatelessWidget {
  const CalculaPreco({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Image.asset(
          "lib/assets/tanque.png",
          height: 200,
        ),
        Text(
          "Álcool ou Gasolina",
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20)
      ],
    );
  }
}