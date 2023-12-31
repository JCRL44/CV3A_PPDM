import 'dart:math';
import 'package:flutter/material.dart';

class EjemploFuture extends StatefulWidget {
  const EjemploFuture({super.key});

  @override
  State<EjemploFuture> createState() => _EjemploFutureState();
}

class _EjemploFutureState extends State<EjemploFuture> {
  late Future<int> numero;

  void initState() {
    super.initState();
    numero = obtenerNumero();
  }

  Future<int> obtenerNumero() {
    return Future.delayed(const Duration(seconds: 2), () {
      return Random().nextInt(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: obtenerNumero(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return const Text('Error');
                } else if (snapshot.hasData) {
                  int data = snapshot.data!;
                  return Text(
                    data.toString(),
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      //color: myColor,
                    ),
                  );
                } else {
                  return const Text('No hay datos');
                }
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
