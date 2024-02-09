import 'package:flutter/material.dart';

class HolaMundoPage extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;

  HolaMundoPage({Key? key});
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text(
            'Hola mundo',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(0, _deviceHeigth * 0.03, 0, 0),
          child: SizedBox(
            width: _deviceWidth,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Hola,mundo!')),
              ],
            ),
          ),
        ));
  }
}
