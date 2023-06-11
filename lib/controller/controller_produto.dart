import 'package:cloud_firestore/cloud_firestore.dart';
import '../dao/dao_produto.dart';
import '../model/Produto.dart';

class ProdutoController {
  Future<void> cadastrarProduto(Produto prod) async
  {
    ProdutoDao dao = ProdutoDao();
    CollectionReference instancia = dao.instanciaFb;
    prod.setId = await dao.retornarTamanho() + 1;
    dao.setProduto = prod;
    return instancia
        .doc(dao.getProduto.getId.toString().trim())
        .set(dao.toJson())
        .then((value) => print("Categoria adicionada com sucesso !"))
        .catchError((onError) => print('Erro ao adicionar nova categoria: $onError'));
  }

  Future<List> carregarRegistrosTabela() async
  {
    late QuerySnapshot resultado;
    ProdutoDao dao = ProdutoDao();
    List lista = [];
    resultado = await dao.carregarProdutos();
    var linhas = resultado.docs;

    for(var item in linhas)
      lista.add(ProdutoDao.fromSnapshot(item));
    return lista;
  }
}