class Mesa {
    final int _id;
    String _descricao;

    Mesa(this._id, this._descricao);

    int get getId => this._id;

    String get getDescricao => this._descricao;
    set setDescricao(String descricao) => this._descricao = descricao;


}