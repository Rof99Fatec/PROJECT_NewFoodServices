class Categoria {
    int _id;
    String _descricao;

    Categoria(this._id, this._descricao);

    int get getId => this._id;
    set setId(int id) => this._id = id;
    
    String get getDescricao => this._descricao;
    set setDescricao(String descricao) => this._descricao = descricao;

}