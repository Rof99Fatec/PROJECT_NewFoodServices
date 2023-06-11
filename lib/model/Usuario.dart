import 'Nivel_Acesso.dart';

class Usuario {
    final int _id;
    String _email;
    String _senha;
    Nivel_Acesso _nv;

    Usuario(this._id, this._email, this._senha, this._nv);

    int get getId => this._id;

    String get getEmail => this._email;
    set setEmail(String email) => this._email = email;

    String get getSenha => this._email;
    set setSenha(String senha) => this._senha = senha;

    Nivel_Acesso get getNivelAcesso => this._nv;
    set setNivelAcesso(Nivel_Acesso nv) => this._nv = nv;
    
    @override
    String toString() {
        return 'Usuário:\rID:${this._id}\rE-Mail:${this._email}\rSenha:${this._senha}\rNível Acesso:${this._nv.getDescricao}';
    }
}