import 'package:flutter/material.dart';
import 'package:my_firt_app/Clase230923/ejemploFuture.dart';
import 'package:my_firt_app/Clase230930/mascota_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MascotaScreen(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primer ejercicio José Carlos'),
      ),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 1;
  Color myColor = Colors.amber;
  String mensaje = "Hola Mundo State(José Carlos)";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mensaje)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Valor de contador',
              style: TextStyle(fontSize: 35, color: Colors.blueGrey),
            ),
            Text(
              cont.toString(),
              style: const TextStyle(fontSize: 50, color: Colors.purpleAccent),
            ),
            Icon(
              Icons.lightbulb,
              color: myColor,
              size: 50,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cont++;

            if (myColor == Colors.amber) {
              myColor = Colors.red;
            } else {
              myColor = Colors.amber;
            }

            if (cont > 10) {
              myColor = Colors.black;
            }
            if (cont >= 15) {
              cont = 0;
            }
          });
        },
        child: const Icon(Icons.circle),
      ),
    );
  }
}
