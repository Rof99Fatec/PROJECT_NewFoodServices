import 'package:flutter/material.dart';
import 'package:projeto/controller/controller_categoria.dart';
import 'package:projeto/controller/controller_produto.dart';
import '../model/Produto.dart';
import '../widgets/control_button.dart';
import '../widgets/control_inputs.dart';

class TelaFormProdutos extends StatefulWidget {
  final _nome = TextEditingController();
  final _descricao = TextEditingController();
  final _valor = TextEditingController();
  @override
  State<TelaFormProdutos> createState() => _TelaFormProdutosState();
}

class _TelaFormProdutosState extends State<TelaFormProdutos> {
  List linhas = [];
  int id_categoria = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Novo Produto"),
      ),
      body: _Body(context),
    );
  }

  _Body(BuildContext context) {
    _carregar();
    return SingleChildScrollView(
      child:
      Container(
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
            InputText("", "", controller: widget._nome),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nome:"),
              ],
            ),
            SizedBox(height: 15,),
            InputText("", "", controller: widget._descricao),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Valor:"),
              ],
            ),
            SizedBox(height: 15,),
            InputText("", "", controller: widget._valor),
            SizedBox(height: 15,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Selecione uma categoria:"),
              ],
            ),
            DropdownButton<int>(
                value: id_categoria,
                onChanged: (int? value) {
                  setState(() {
                    id_categoria = value!;
                  });
                },
                items: [
                  DropdownMenuItem<int>(
                      value: 0,
                      child: Text("Selecione uma categoria")
                  ),
                  for(var items in linhas)
                    DropdownMenuItem<int>(
                      value: items.id,
                        child: Text(items.descricao)
                    )
                ],
            ),
            Botao("Cadastrar", onPressed: _cadastrar)
          ],
        )
      )
    );
  }

  void _cadastrar()  {
    ProdutoController controller = new ProdutoController();

    Produto prod = new Produto(
        0,
        widget._nome.text,
        widget._descricao.text,
        double.parse(widget._valor.text),
        id_categoria
    );

    controller.cadastrarProduto(prod);
  }

  _carregar() async {
    CategoriaController categoria = new CategoriaController();
    List lista = await categoria.carregarRegistrosTabela();
    setState(() {
      linhas = lista;
    });

  }
}
