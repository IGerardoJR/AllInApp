import 'package:flutter/material.dart';

class BdPage extends StatelessWidget {
  BdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red, title: const Text('Base de datos test')),
      resizeToAvoidBottomInset: false,
      body: Center(child: Text('BD page')),
    );
  }
}
