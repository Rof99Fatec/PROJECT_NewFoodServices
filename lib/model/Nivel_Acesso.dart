class Nivel_Acesso {
    final int _id;
    final String _descricao;

    Nivel_Acesso(this._id, this._descricao);

    int get getId => this._id;
    String get getDescricao => this._descricao;

    @override
    String toString(){
        return 'Nível Acesso:\rID:${this._id}\rDescrição:${this._descricao}\r';
    }
}