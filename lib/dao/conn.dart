// ignore_for_file: avoid_print

import 'package:firebase_core/firebase_core.dart';

class Conexao {
  Future <void> inicializarFirebase() async{
    await Firebase.initializeApp();
    Firebase.initializeApp().whenComplete(() => print("Conectado ao Firebase"));
  }
}