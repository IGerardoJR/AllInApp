import 'package:flutter/material.dart';
// Page para obtener le indice de masa coportal de una persona.

class CorporalPage extends StatefulWidget {
  @override
  State<CorporalPage> createState() => _CorporalPageState();
}

class _CorporalPageState extends State<CorporalPage> {
  late double _deviceWidth;
  late double _deviceHeigth;

  double altura = 0;
  double peso = 0;
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
                    child: const Text(
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
                        width: _deviceWidth * 0.15,
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
                          child: _botones()),
                      SizedBox(
                        width: _deviceWidth * 0.070,
                      ),
                      _botones(),
                      SizedBox(
                        width: _deviceWidth * 0.070,
                      ),
                      _botones()
                    ],
                  ),
                ),
                SizedBox(
                  height: _deviceHeigth * 0.012,
                ),
                Padding(
                    padding: EdgeInsets.only(left: _deviceWidth * 0.2361),
                    child: Row(
                      children: [
                        const Text('-100'),
                        SizedBox(
                          width: _deviceWidth * 0.13,
                        ),
                        const Text('-10'),
                        SizedBox(
                          width: _deviceWidth * 0.15,
                        ),
                        const Text('-1')
                      ],
                    )),
                SizedBox(
                  height: _deviceHeigth * 0.01199,
                ),
                Padding(
                    padding: EdgeInsets.only(left: _deviceWidth * 0.25),
                    child: SizedBox(
                        width: _deviceWidth,
                        child: Row(
                          children: [
                            SizedBox(
                              width: _deviceWidth * 0.22,
                              child: const Text(
                                'Altura en cm',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: _deviceWidth * 0.07,
                            ),
                            Text("$altura")
                          ],
                        ))),
                SizedBox(
                  height: _deviceHeigth * 0.007,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _deviceWidth * 0.2361),
                  child: Row(
                    children: [
                      const Text('+10'),
                      SizedBox(
                        width: _deviceWidth * 0.15,
                      ),
                      const Text('+1'),
                      SizedBox(
                        width: _deviceWidth * 0.17,
                      ),
                      const Text('+.1'),
                    ],
                  ),
                ),
                SizedBox(
                  height: _deviceHeigth * 0.007,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _deviceWidth * 0.0123),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: _deviceWidth * 0.20),
                          child: _botones()),
                      SizedBox(
                        width: _deviceWidth * 0.070,
                      ),
                      _botones(),
                      SizedBox(
                        width: _deviceWidth * 0.070,
                      ),
                      _botones()
                    ],
                  ),
                ),
                SizedBox(
                  height: _deviceHeigth * 0.007,
                ),
                Padding(
                  padding: EdgeInsets.only(left: _deviceWidth * 0.2361),
                  child: Row(
                    children: [
                      const Text('-10'),
                      SizedBox(
                        width: _deviceWidth * 0.15,
                      ),
                      const Text('-1'),
                      SizedBox(
                        width: _deviceWidth * 0.17,
                      ),
                      const Text('-.1')
                    ],
                  ),
                ),
                SizedBox(
                  height: _deviceHeigth * 0.010,
                ),
                _btnCalcular()
              ],
            )),
      ),
    );
  }

  Widget _botones() {
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromRGBO(240, 235, 235, 1.0),
            border: Border.all(),
            borderRadius: BorderRadius.circular(20)),
        width: _deviceWidth * 0.13,
        height: _deviceHeigth * 0.15,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
            onPressed: () => {},
            child: const Text(
              '+',
              style: TextStyle(
                color: Colors.greenAccent,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: () => {},
            child: const Text(
              '-',
              style: TextStyle(
                  color: Colors.red, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ]));
  }

  Widget _btnCalcular() {
    return Center(
        child: ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
              (states) => Color.fromRGBO(53, 21, 116, 1.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ))),
      onPressed: () => {},
      child: const Text(
        'Calcular',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ));
  }
}
