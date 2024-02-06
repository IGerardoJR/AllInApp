import 'package:flutter/material.dart';
import 'pages/holamundo.dart';
import 'pages/contador.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/test': (context) => ContadorWidget()},
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;
  MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: const Text(
            'Pantalla principal',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: SizedBox(
            height: _deviceHeigth * 0.80,
            child: Column(
              children: [
                _buttonText(
                    texto: 'Hola mundo', context: context, ruta: '/test')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonText({required texto, required context, required ruta}) {
    return ElevatedButton(
        onPressed: () => {Navigator.pushNamed(context, ruta)},
        child: Text(
          texto,
          style: const TextStyle(fontSize: 18),
        ));
  }
}
