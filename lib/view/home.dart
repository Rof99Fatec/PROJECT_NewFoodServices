import 'package:flutter/material.dart';
import 'package:projeto/view/tela_categorias.dart';
import 'package:projeto/view/tela_pedidos.dart';
import 'package:projeto/view/tela_produtos.dart';
import '../widgets/control_telas.dart';

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
      body: _Body(context),
    );
  }

  _Body(BuildContext ctx) {
    Telas tela = new Telas();
    return Container(
      margin: EdgeInsets.all(50),
      child:
          SingleChildScrollView(
            child:
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child:
                        Align(
                          alignment: Alignment.center,
                          child:
                          Container(
                            margin: EdgeInsets.all(50),
                            width: double.infinity,
                            child: Text("Bem-vindo ao sistema !",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )
                          ,
                        )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              tela.abrirTela(ctx, TelaPedidos());
                            },
                            child: const SizedBox(
                                width: 120,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Pedidos",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {},
                            child: const SizedBox(
                                width: 120,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Meu Usuário",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              tela.abrirTela(ctx, TelaProdutos());
                            },
                            child: const SizedBox(
                                width: 120,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Produtos",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {
                              tela.abrirTela(ctx, TelaCategoria());
                            },
                            child: const SizedBox(
                                width: 120,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Categorias",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 25,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {},
                            child: const SizedBox(
                                width: 120,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Funcionários",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Card(
                          clipBehavior: Clip.hardEdge,
                          child: InkWell(
                            splashColor: Colors.blue.withAlpha(30),
                            onTap: () {},
                            child: const SizedBox(
                                width: 120,
                                height: 120,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Teste",
                                    style: TextStyle(
                                        fontSize: 15
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],

            ),
          )

    );
  }
}
