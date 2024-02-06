import 'package:flutter/material.dart';

class ContadorWidget extends StatelessWidget {
  late double _deviceWidth;
  late double _deviceHeigth;

  ContadorWidget({Key? key});
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Center(
              child: const Text(
                'Hola mundo',
                style: TextStyle(color: Colors.black87),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(0, _deviceHeigth * 0.03, 0, 0),
            child: SizedBox(
              width: _deviceWidth,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, _deviceWidth * 0.8, 0),
                    child: ElevatedButton(
                        onPressed: () => {
                              Navigator.pop(context),
                            },
                        child: Icon(Icons.arrow_back)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: _deviceHeigth * 0.38),
                    child: Center(child: const Text('Hola,mundo!')),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
