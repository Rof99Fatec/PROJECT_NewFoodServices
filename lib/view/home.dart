import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String _titulo;
  Home(this._titulo);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._titulo),
      ),
      body: Body(),
    );
  }

  Body() {
    return Container(

    );
  }
}
