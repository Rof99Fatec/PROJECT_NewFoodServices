import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto/controller/controller_categoria.dart';
import 'package:projeto/view/tela_form_categoria.dart';

import '../widgets/control_telas.dart';

class TelaCategoria extends StatefulWidget {
  const TelaCategoria({super.key});

  @override
  State<TelaCategoria> createState() => _TelaCategoriaState();
}

class _TelaCategoriaState extends State<TelaCategoria> {
  Telas tela = new Telas();
  CategoriaController controller = new CategoriaController();
  List linhas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categorias"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.add
            ),
            onPressed: () => tela.abrirTela(context, TelaFormCategoria()),
          )
        ],
      ),
      body: _Body(),
    );

  }

  _Body() {
    _carregar();
    return Container(
      margin: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child:
            Column(
              children: [
                Table(
                  defaultColumnWidth: FixedColumnWidth(170.0),
                  border: TableBorder(
                      horizontalInside: BorderSide(
                          width: 1,
                          color: Colors.grey,
                          style: BorderStyle.solid
                      )
                  ),
                  children: [
                    TableRow(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                        alignment: Alignment.centerLeft,
                          child: Text("ID", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text("Descrição", style: TextStyle(fontWeight: FontWeight.bold),),
                        )
                      ]
                    ),
                    for (var item in linhas)
                      TableRow(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            child: Text(item.id.toString()),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            child: Text(item.descricao),
                          ),
                        ]
                      ),
                  ],
                ),
              ],
            )
      ),
    );
  }

  _carregar() async {
      List lista = await controller.carregarRegistrosTabela();
      setState(() {
        linhas = lista;
      });

  }
}