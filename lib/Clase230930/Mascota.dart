class Mascota {
  String mensaje;
  String estatus;

  Mascota({required this.mensaje, required this.estatus});

  factory Mascota.getJson(Map json) {
    return Mascota(mensaje: json['message'], estatus: json['status']);
  }
}
