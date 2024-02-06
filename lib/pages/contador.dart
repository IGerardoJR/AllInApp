// Simple contador probando el manejo basico de estados
import 'dart:async';

import 'package:flutter/material.dart';

class ContadorPage extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;
  ContadorPage({Key? key});

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: const Text(
              'Contador',
              style: TextStyle(color: Colors.white),
            )),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: _deviceHeigth * 0.21),
                child: const Text(
                  'Valor que incrementara el contador',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: _deviceHeigth * 0.045,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _deviceWidth * 0.25, 0, _deviceWidth * 0.25, 0),
                child: _textFieldBox(),
              ),
              SizedBox(
                height: _deviceHeigth * 0.045,
              ),
              const Text('Estado actual del contador es de: '),
              SizedBox(
                height: _deviceHeigth * 0.045,
              ),
              const Text('0', style: TextStyle(fontSize: 50)),
              SizedBox(
                height: _deviceHeigth * 0.045,
              ),
              SizedBox(
                width: _deviceWidth * 0.5,
                height: _deviceHeigth * 0.06,
                child: _boton(
                    accion: hacerMagia(),
                    texto: 'Aumentar',
                    colorBoton: Colors.green),
              ),
              SizedBox(
                height: _deviceHeigth * 0.02,
              ),
              SizedBox(
                width: _deviceWidth * 0.5,
                height: _deviceHeigth * 0.06,
                child: _boton(
                    accion: hacerMagia(),
                    texto: 'Decrementar',
                    colorBoton: Colors.red),
              ),
              SizedBox(
                height: _deviceHeigth * 0.02,
              ),
              SizedBox(
                width: _deviceWidth * 0.5,
                height: _deviceHeigth * 0.06,
                child: _boton(
                    accion: hacerMagia(),
                    texto: 'Resetear',
                    colorBoton: Colors.black),
              ),
            ],
          ),
        ));
  }

  hacerMagia() {
    print('aumentar!');
  }

  Widget _textFieldBox() {
    return TextField(
      onSubmitted: (value) {},
    );
  }

  Widget _boton({required accion, required texto, required colorBoton}) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorBoton),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
        onPressed: accion,
        child: Text(texto,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)));
  }
}
