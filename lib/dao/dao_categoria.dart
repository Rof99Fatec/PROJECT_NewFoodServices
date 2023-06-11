import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/Categoria.dart';
class CategoriaDao {
  CollectionReference instanciaFb = FirebaseFirestore.instance.collection("categorias");
  Categoria _cat = Categoria(0, "");
  int id = 0;
  String descricao = "";

  CategoriaDao();
  
  Future<int> retornarTamanho() async{
    late int qtd;
    var snapshot = await instanciaFb
        .count()
        .get()
        .then((value) => qtd = value.count);
    return qtd;
  }

  Categoria get getCategoria => this._cat;
  set setCategoria(Categoria cat) => this._cat = cat;

  Map<String, dynamic> toJson() => {
    'id': this._cat.getId,
    'descricao': this._cat.getDescricao
  };

  CategoriaDao.fromSnapshot(QueryDocumentSnapshot snapshot):
      id = snapshot['id'],
      descricao = snapshot['descricao'];


  Future<QuerySnapshot> carregarCategorias() async {
    late QuerySnapshot resultado;
    resultado = await instanciaFb.orderBy('id').get();
    return resultado;
  }

}