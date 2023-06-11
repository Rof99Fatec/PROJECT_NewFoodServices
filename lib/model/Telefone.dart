import 'Funcionario.dart';

class Telefone {
    final int _id;
    int _ddd;
    int _numero;
    String _descricao;
    Funcionario _funcionario;

    Telefone(this._id, this._ddd, this._numero, this._descricao, this._funcionario);

    int get getId => this._id;

    int get getDdd => this._ddd;
    set setDdd(int ddd) => this._ddd = ddd;

    int get getNumero => this._numero;
    set setNumero(int numero) => this._numero = numero;

    String get getDescricao => this._descricao;
    set setDescricao(String descricao) => this._descricao = descricao;

    Funcionario get getFuncionario => this._funcionario;
    set setFuncionario(Funcionario funcionario) => this._funcionario = funcionario;
}