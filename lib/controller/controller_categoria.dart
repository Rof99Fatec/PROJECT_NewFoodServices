import 'package:cloud_firestore/cloud_firestore.dart';
import '../dao/dao_categoria.dart';
import '../model/Categoria.dart';

class CategoriaController {

  Future<void> cadastrarCategoria(Categoria cat) async
  {
    CategoriaDao dao = CategoriaDao();
    CollectionReference instancia = dao.instanciaFb;
    cat.setId = await dao.retornarTamanho() + 1;
    dao.setCategoria = cat;
    return instancia
        .doc(dao.getCategoria.getId.toString().trim())
        .set(dao.toJson())
        .then((value) => print("Categoria adicionada com sucesso !"))
        .catchError((onError) => print('Erro ao adicionar nova categoria: $onError'));

  }

  Future<List> carregarRegistrosTabela() async
  {
    late QuerySnapshot resultado;
    CategoriaDao dao = CategoriaDao();
    List lista = [];
    resultado = await dao.carregarCategorias();
    var linhas = resultado.docs;

    for(var item in linhas)
      lista.add(CategoriaDao.fromSnapshot(item));
    return lista;
  }
}
