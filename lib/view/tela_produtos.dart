import 'package:flutter/material.dart';
import 'package:projeto/controller/controller_produto.dart';
import 'package:projeto/view/tela_form_produtos.dart';
import '../widgets/control_telas.dart';

class TelaProdutos extends StatefulWidget {

  @override
  State<TelaProdutos> createState() => _TelaProdutosState();
}

class _TelaProdutosState extends State<TelaProdutos> {
  Telas tela = new Telas();
  ProdutoController controller = ProdutoController();
  List linhas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("produtos"),
        actions: [
          IconButton(
            icon: Icon(
                Icons.add
            ),
            onPressed: () => tela.abrirTela(context, TelaFormProdutos()),
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
                defaultColumnWidth: FixedColumnWidth(115.0),
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
                          child: Text("Nome", style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.centerLeft,
                          child: Text("Valor", style: TextStyle(fontWeight: FontWeight.bold),),
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
                            child: Text(item.nome),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.centerLeft,
                            child: Text("R\$"+item.valor.toString()),
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
