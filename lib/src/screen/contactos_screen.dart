import 'package:flutter/material.dart';
import 'package:my_firt_app/src/models/Persona.dart';

class ContactosScreen extends StatelessWidget {
  ContactosScreen({super.key});

  final List<Persona> contactos = [
    Persona(nombre: 'José Carlos', foto: ''),
    Persona(nombre: 'Juan Carlos', foto: ''),
    Persona(nombre: 'José Juan', foto: ''),
    Persona(nombre: 'Omar', foto: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de contactos')),
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1j1JF0fJvbVYbeqbxB4U6qgd7hKG0nANK1g&usqp=CAU'),
            ),
            title: Text('Nombre: ${contactos[index].nombre}'),
            subtitle: const Text('Apellidos...'),
            tileColor: Colors.cyanAccent,
            trailing: const Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
