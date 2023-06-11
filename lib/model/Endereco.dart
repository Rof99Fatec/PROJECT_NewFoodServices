import 'Funcionario.dart';

class Endereco {
    final int _id;
    String _logradouro;
    int _numero;
    String _cidade;
    String _estado;
    String _cep;
    Funcionario _funcionario;

    Endereco(this._id, this._logradouro, this._numero, this._cidade, this._estado, this._cep, this._funcionario);

    int get getId => this._id;

    String get getLogradouro => this._logradouro;
    set setLogradouro(String logradouro) => this._logradouro = logradouro;

    int get getNumero => this._numero;
    set setNumero(int numero) => this._numero = numero;

    String get getCidade => this._cidade;
    set setCidade(String cidade) => this._cidade = cidade;

    String get getEstado => this._estado;
    set setEstado(String estado) => this._estado = estado;

    String get getCep => this._cep;
    set setCep(String cep) => this._cep = cep;

    Funcionario get getFuncionario => this._funcionario;
    set setFuncionario(Funcionario funcionario) => this._funcionario = funcionario;
}