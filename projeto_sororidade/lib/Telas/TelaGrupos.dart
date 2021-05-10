import 'package:flutter/material.dart';
import '../Telas/TelaConversa.dart';

class TelaGrupos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos os grupos"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text("Voltar"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          RaisedButton(
              child: Text('Conversa'),
              onPressed: () {
                Navigator.push(context,  MaterialPageRoute(builder: (context) => TelaConversa()));
              },

          ),

    ]));
  }
}