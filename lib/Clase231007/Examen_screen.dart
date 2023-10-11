import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_firt_app/Clase231007/Producto.dart';

class ExamenScreen extends StatefulWidget {
  const ExamenScreen({super.key});

  @override
  State<ExamenScreen> createState() => _ExamenScreenState();
}

class _ExamenScreenState extends State<ExamenScreen> {
  int getRandomValue(int min, int max) {
    return min + Random().nextInt(max - min);
  }

  Future<Producto> getProductoFromApi() async {
    final uriProduct =
        Uri.parse('https://fakestoreapi.com/products/${getRandomValue(1, 20)}');
    // Uri.parse('https://fakestoreapi.com/products/17');

    final responseApi = await http.get(uriProduct);

    Producto p = Producto.getJson(json.decode(responseApi.body));
    return p;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Producto')),
      ),
      body: FutureBuilder(
        future: getProductoFromApi(),
        builder: (context, snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70,
                backgroundImage: NetworkImage(
                  snapshot.data?.imagen ??
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1j1JF0fJvbVYbeqbxB4U6qgd7hKG0nANK1g&usqp=CAU',
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 60.0),
                  Text(
                    'Titulo (${snapshot.data?.id}): ${snapshot.data?.titulo}',
                    style:
                        TextStyle(fontSize: 15.0, color: Colors.purpleAccent),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 60.0),
                  Text(
                    'Precio: ${snapshot.data?.precio}',
                    style: TextStyle(fontSize: 20.0, color: Colors.red),
                  ),
                  SizedBox(width: 60.0),
                  Text(
                    '${snapshot.data?.categoria}',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
              Text(
                'Rating',
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 60.0),
                  Text(
                    'Rate: ${(snapshot.data?.rating?.rate ?? 0.0)}',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 60.0),
                  Text(
                    'Count: ${(snapshot.data?.rating?.count)}',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
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
