import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  String rotulo;
  String label;
  TextEditingController controller;

  InputText(this.rotulo, this.label, {required this.controller});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      controller: widget.controller,
      maxLines: 1,
      style: TextStyle(
        color: Colors.black,
        backgroundColor: Colors.white,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5),
        labelText: widget.rotulo,
        hintText: widget.label,
        focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.lightBlueAccent,
            )
        ) ,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          )
        )
      ),
    );
  }
}
