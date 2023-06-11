import 'Usuario.dart';

class Funcionario {
    // ATRIBUTOS PRIVADOS
    final int _id;
    String _nome;
    DateTime _data_nasc;
    String _sexo;
    String _naturalidade;
    String _cpf;
    String _rg;
    Usuario _user;
    
    // MÉTODO CONSTRUTOR
    Funcionario(this._id, this._nome, this._data_nasc, this._sexo, this._naturalidade, this._cpf, this._rg, this._user);

    // GETTER E SETTERS
    int get getId => this._id;

    String get getNome => this._nome;
    set setNome(String nome) => this._nome = nome;

    DateTime get getDataNasc => this._data_nasc;
    set setDataNasc(DateTime dataNasc) => this._data_nasc = dataNasc;

    String get getSexo => this._sexo;
    set setSexo(String sexo) => this._sexo = sexo;

    String get getNaturalidade => this._naturalidade;
    set setNaturalidade(String naturalidade) => this._naturalidade = naturalidade;

    String get getCpf => this._cpf;
    set setCpf(String cpf) => this._cpf = cpf;

    String get getRg => this._rg;
    set setRg(String rg) => this._rg = rg;

    Usuario get getUsuario => this._user;
    set setUsuario(Usuario user) => this._user = user;

}