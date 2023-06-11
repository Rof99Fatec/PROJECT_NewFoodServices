import 'Mesa.dart';

class Cliente {
    final int _id;
    String _nome;
    Mesa _mesa;

    Cliente(this._id, this._nome, this._mesa);

    int get getId => this._id;

    String get getNome => this._nome;
    set setNome(String nome) => this._nome = nome;

    Mesa get getMesa => this._mesa;
    set setMesa(Mesa mesa) => this._mesa = mesa;

}