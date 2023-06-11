import 'Funcionario.dart';
import 'Cliente.dart';

class Pedido {
    final int _id;
    DateTime _dt_inicio;
    DateTime _dt_fim;
    double _vlr_total;
    String _observacoes;
    Funcionario _funcionario;
    Cliente _cliente;
    
    Pedido(this._id, this._dt_inicio, this._dt_fim, this._vlr_total, this._observacoes, this._funcionario, this._cliente);

    int get getId => this._id;

    DateTime get getDataInicio => this._dt_inicio;
    set setDataInicio(DateTime data) => this._dt_inicio = data;

    DateTime get getDataFim => this._dt_fim;
    set setDataFim(DateTime data) => this._dt_fim = data;

    double get getValorTotal => this._vlr_total;
    set setValorTotal(double total) => this._vlr_total = total;

    String get getObservacoes => this._observacoes;
    set setObservacoes(String observacoes) => this._observacoes = observacoes;

    Funcionario get getFuncionario => this._funcionario;
    set setFuncionario(Funcionario funcionario) => this._funcionario = funcionario;

    Cliente get getCliente => this._cliente;
    set setCliente(Cliente cliente) => this._cliente = cliente;
}