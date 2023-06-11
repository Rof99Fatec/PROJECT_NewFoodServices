import 'package:flutter/material.dart';
import 'package:projeto/controller/controller_categoria.dart';
import 'package:projeto/model/Categoria.dart';
import 'package:projeto/widgets/control_button.dart';
import 'package:projeto/widgets/control_inputs.dart';

class TelaFormCategoria extends StatefulWidget {
  final _descricao = TextEditingController();

  @override
  State<TelaFormCategoria> createState() => _TelaFormCategoriaState();
}

class _TelaFormCategoriaState extends State<TelaFormCategoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova categoria"),
      ),
      body: _Body(context),
    );
  }

  _Body(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Descrição:"),
            ],
          ),
          SizedBox(height: 15,),
          InputText("", "", controller: widget._descricao),
          SizedBox(height: 15,),
          Botao("Cadastrar", onPressed: _cadastrar)
        ],
      )
    );
  }

  void _cadastrar()  {
    CategoriaController controller = new CategoriaController();
    Categoria cat = new Categoria(1, widget._descricao.text);
    controller.cadastrarCategoria(cat);
  }
}
