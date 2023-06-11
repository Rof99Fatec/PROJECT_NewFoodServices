import 'Categoria.dart';

class Produto {
    int _id;
    String _nome;
    String _descricao;
    double _valor;
    int _id_categoria;

    Produto(this._id, this._nome, this._descricao, this._valor, this._id_categoria);

    int get getId => this._id;
    set setId(int id) => this._id = id;

    String get getNome => this._nome;
    set setNome(String nome) => this._nome = nome;
    
    String get getDescricao => this._descricao;
    set setDescricao(String descricao) => this._descricao = descricao;

    double get getValor => this._valor;
    set setValor(double valor) => this._valor = valor;

    int get getIdCategoria => this._id_categoria;
    set setIdCategoria(int id_categoria) => this._id_categoria = id_categoria;
}