import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projeto/model/Categoria.dart';
import '../model/Produto.dart';

class ProdutoDao {
  CollectionReference instanciaFb = FirebaseFirestore.instance.collection("produtos");
  Produto _prod = new Produto(0,"","",0.0,0);

  int id = 0;
  int id_categoria =0;
  String nome = "";
  String descricao = "";
  double valor = 0.0;
  String desc_cat = "";

  ProdutoDao();

  Produto get getProduto => this._prod;
  set setProduto(Produto produto) => this._prod = produto;

  Map<String, dynamic> toJson() => {
    'id': this._prod.getId,
    'nome': this._prod.getNome,
    'descricao': this._prod.getDescricao,
    'valor': this._prod.getValor,
    'id_categoria': this._prod.getId
  };

  ProdutoDao.fromSnapshot(QueryDocumentSnapshot snapshot):
      id = snapshot['id'],
      nome = snapshot['nome'],
      descricao = snapshot['descricao'],
      valor = snapshot['valor'],
      id_categoria = snapshot['id_categoria'];


  Future<int> retornarTamanho() async{
    late int qtd;
    var snapshot = await instanciaFb
        .count()
        .get()
        .then((value) => qtd = value.count);
    return qtd;
  }

  Future<QuerySnapshot> carregarProdutos() async {
    late QuerySnapshot resultado;
    resultado = await instanciaFb.orderBy('id').get();
    return resultado;
  }
}