import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_firt_app/Clase230930/Mascota.dart';
import 'package:http/http.dart' as http;

class MascotaScreen extends StatefulWidget {
  const MascotaScreen({super.key});

  @override
  State<MascotaScreen> createState() => _MascotaScreenState();
}

class _MascotaScreenState extends State<MascotaScreen> {
  Future<Mascota> getMascota() async {
    final urlApi = Uri.parse('https://dog.ceo/api/breeds/image/random');
    final respuesta = await http.get(urlApi);

    Mascota m = Mascota.getJson(json.decode(respuesta.body));
    return m;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mascotas'),
      ),
      body: FutureBuilder(
        future: getMascota(),
        builder: (context, snapshot) {
          //return Text(snapshot.data?.mensaje ?? 'Sin foto');
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  snapshot.data?.mensaje ??
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1j1JF0fJvbVYbeqbxB4U6qgd7hKG0nANK1g&usqp=CAU',
                  scale: 1.0,
                ),
                Text(
                  snapshot.data?.estatus ?? 'Sin foto',
                  style: TextStyle(fontSize: 35, color: Colors.green),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
