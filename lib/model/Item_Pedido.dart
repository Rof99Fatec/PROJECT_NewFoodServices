import 'Pedido.dart';
import 'Produto.dart';

class Item_Pedido {
    final int _id;
    Pedido _pedido;
    Produto _produto;
    int _quantidade;
    
    Item_Pedido(this._id, this._pedido, this._produto, this._quantidade);

    int get getId => this._id;

    Pedido get getPedido => this._pedido;
    set setPedido(Pedido pedido) => this._pedido = pedido;

    Produto get getProduto => this._produto;
    set setProduto(Produto produto) => this._produto = produto;

    int get getQuantidade => this._quantidade;
    set setQuantidade(int quantidade) => this._quantidade = quantidade;
}