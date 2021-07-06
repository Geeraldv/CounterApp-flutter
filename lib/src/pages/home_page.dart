import 'package:flutter/material.dart';

final estiloTexto = new TextStyle(fontSize: 25.0);

final contador = 10;

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numeros de clicks:',
            style: estiloTexto,
          ),
          Text(
            '$contador',
            style: estiloTexto,
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Mundo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
