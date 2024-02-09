import 'package:flutter/material.dart';
import 'package:multiples_funcionalidades/main.dart';
// Page para obtener le indice de masa coportal de una persona.

class CorporalPage extends StatefulWidget {
  @override
  State<CorporalPage> createState() => _CorporalPageState();
}

class _CorporalPageState extends State<CorporalPage> {
  late double _deviceWidth;
  late double _deviceHeigth;
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: const Color.fromRGBO(53, 18, 116, 1.0),
                title: const Text(
                  'IMC App',
                  style: TextStyle(color: Colors.white),
                )),
            body: Column(
              children: [
                SizedBox(
                  height: _deviceHeigth * 0.026,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _deviceWidth * 0.045),
                  child: SizedBox(
                    width: _deviceWidth * 0.90,
                    child: const Text(
                      '¿Qué es el IMC?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: _deviceHeigth * 0.015,
                ),
                SizedBox(
                    child: LimitedBox(
                  maxHeight: _deviceHeigth * 0.25,
                  maxWidth: _deviceWidth * 0.95,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        _deviceWidth * 0.1, 0, _deviceWidth * 0.1, 0),
                    child: Text(
                      'El índice de masa corporal es un numero el cual en base al peso y altura de una persona permite identificar el sobrepeso y obesidad en adultos.',
                    ),
                  ),
                )),
                SizedBox(
                  height: _deviceHeigth * 0.048,
                ),
                //            Peso
                Padding(
                  padding: EdgeInsets.only(left: _deviceWidth * 0.2361),
                  child: Row(
                    children: [
                      const Text('+100'),
                      SizedBox(
                        width: _deviceWidth * 0.13,
                      ),
                      const Text('+10'),
                      SizedBox(
                        width: _deviceWidth * 0.13,
                      ),
                      const Text('+1'),
                    ],
                  ),
                ),
                SizedBox(
                  height: _deviceHeigth * 0.012,
                ),
                Padding(
                    padding: EdgeInsets.only(left: _deviceWidth * 0.0123),
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: _deviceWidth * 0.20),
                            child: _botones())
                      ],
                    ))
                // Primeros textos para los botones (+-100,+-10,+-1)
              ],
            )),
      ),
    );
  }

  Widget _botones() {
    return Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(250, 235, 235, 1.0),
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)),
        width: _deviceWidth * 0.13,
        height: _deviceHeigth * 0.13,
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '+',
                style: TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '-',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ]));
  }
}
