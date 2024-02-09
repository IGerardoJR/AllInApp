import 'package:flutter/material.dart';
import 'pages/holamundo.dart';
import 'pages/contador.dart';
import 'pages/basesdatos.dart';
import 'pages/imc.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/hello': (context) => HolaMundoPage(),
      '/contador': (context) => ContadorPage(),
      '/bd': (context) => BdPage(),
      '/imcapp': (context) => CorporalPage(),
    },
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Tema light por defecto
  static ThemeData theme = ThemeData.light();
  late double _deviceWidth;
  late double _deviceHeigth;
  bool darkMode = false;
  IconData icono = Icons.sunny;
  // App bar background color;
  Color colorBar = Colors.blue;

  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    _deviceHeigth = MediaQuery.of(context).size.height;
    // TODO: implement build
    return MaterialApp(
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: _deviceWidth * 0.80,
                child: Text('Pantalla principal'),
              ),
              Container(
                  width: _deviceHeigth * 0.03, child: _iconButton(icon: icono)),
            ],
          ),
          backgroundColor: colorBar,
        ),
        body: Center(
          child: SizedBox(
            height: _deviceHeigth * 0.80,
            child: Column(
              children: [
                _buttonText(
                    texto: 'Hola mundo', context: context, ruta: '/hello'),
                SizedBox(
                  height: _deviceHeigth * 0.01,
                ),
                // App contador
                _buttonText(
                    texto: 'ContadorApp', context: context, ruta: '/contador'),
                SizedBox(
                  height: _deviceHeigth * 0.01,
                ),
                _buttonText(
                    texto: 'Base de datos', context: context, ruta: '/bd'),
                SizedBox(
                  height: _deviceHeigth * 0.01,
                ),
                _buttonText(
                    texto: 'Indice Corporal',
                    context: context,
                    ruta: '/imcapp'),
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

  void changeMode({required currentMode}) {
    // currentMode == true ? theme = ThemeData.dark() : theme = ThemeData.light();
    if (currentMode == true) {
      // Cambia el modo a modo oscuro, se necesitara cambiar el color de la appbar
      theme = ThemeData.dark();
      icono = Icons.mode_night;
      colorBar = const Color.fromRGBO(40, 40, 40, 1.0);
    } else {
      theme = ThemeData.light();
      icono = Icons.sunny;
      colorBar = Colors.blue;
    }
  }

  Widget _iconButton({required icon}) {
    return TextButton(
      onPressed: () => {
        setState(() {
          darkMode = !darkMode;
          changeMode(currentMode: darkMode);
        }),
      },
      child: Icon(icon),
    );
  }
}
