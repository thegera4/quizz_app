import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final Function selectHandler; //puedes usar VoidCallback en lugar de Function
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler, 
        child: Text(answerText),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.blue
          ),
          // foregroundColor: MaterialStateProperty.all(
          //   Colors.white
          // ) colores de texto
        ),
      ),
    );
  }
}