import 'package:flutter/material.dart';

class Botao extends StatefulWidget {
  final String texto;
  final void Function() onPressed;
  Botao(this.texto, {required this.onPressed});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.grey[300],
          primary: Colors.redAccent,
          minimumSize: Size(100, 30),
          padding: EdgeInsets.symmetric(horizontal: 15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
        ),
        onPressed: widget.onPressed, child: Text(widget.texto));
  }
}
