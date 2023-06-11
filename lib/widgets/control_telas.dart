import 'package:flutter/material.dart';

class Telas {
  abrirTela(ctx, page){
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }));
  }

}
