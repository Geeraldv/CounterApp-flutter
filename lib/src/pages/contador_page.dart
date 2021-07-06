import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final estiloTexto = new TextStyle(fontSize: 25.0);

  int _contador = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('ContadorApp'),
          backgroundColor: Colors.grey[900],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numeros de taps:',
              style: estiloTexto,
            ),
            Text(
              '$_contador',
              style: estiloTexto,
            ),
          ],
        )),
        floatingActionButton: _crearBotones(),
      ),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero),
            backgroundColor: Colors.grey[900],
            onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[900],
            onPressed: _sustraer),
        SizedBox(
          width: 7.0,
        ),
        FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[900],
            onPressed: _agregar),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _contador++;
    });
  }

  void _sustraer() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }
}
