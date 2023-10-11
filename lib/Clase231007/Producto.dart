import 'dart:ffi';

class Producto {
  int? id;
  String? titulo;
  double? precio;
  String? descripcion;
  String? categoria;
  String? imagen;
  Rating? rating;

  Producto(
      {this.id,
      this.titulo,
      this.precio,
      this.descripcion,
      this.categoria,
      this.imagen,
      this.rating});

  factory Producto.getJson(Map json) {
    return Producto(
        id: json['id'],
        titulo: json['title'],
        precio: json['price'].toDouble(),
        descripcion: json['description'],
        categoria: json['category'],
        imagen: json['image'],
        rating: Rating.getJson(json['rating']));
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({this.rate, this.count});

  factory Rating.getJson(Map json) {
    return Rating(rate: json['rate'].toDouble(), count: json['count']);
  }
}
