import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class Input extends StatelessWidget {
  var combustivel = "";
  var preco = new MoneyMaskedTextController();

  Input({
    required this.combustivel,
    required this.preco,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 32.0),
          alignment: Alignment.centerLeft,
          child: Text(
            combustivel,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
            child: TextFormField(
          controller: preco,
          style: TextStyle(
            fontSize: 29,
            color: Colors.white,
          ),
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ))
      ],
    );
  }
}
