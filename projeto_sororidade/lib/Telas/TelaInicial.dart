import 'package:flutter/material.dart';
import '../Telas/TelaGrupos.dart';

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: Text('Abrir rota(tela)'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TelaGrupos()),
            );
          },
        ),
      ),
    );
  }
}