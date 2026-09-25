void main() {
  Personaje heroe = Personaje(
    clase: "Arquero",
    nombre: "Julian",
    vida: -100,
    stamina: 100,
    escudo: 100,
  );

  Map<String, dynamic> personajeJson = {
    "clase": "Hechizero",
    "nombre": "Gandall",
    "vida": 200,
    "stamina": 300,
    "escudo": 50,
  };

  Personaje heroe2 = Personaje.fromJson(personajeJson);

  print(heroe);
  print(heroe2);
}

class Personaje {
  String nombre;
  String clase;
  int _vida;
  int stamina;
  int escudo;

  // Constructor desde JSON
  Personaje.fromJson(Map<String, dynamic> json)
    : nombre = json['nombre'] ?? "Sin nombre",
      clase = json['clase'] ?? "Sin clase",
      _vida = json['vida'] ?? 0,
      stamina = json['stamina'] ?? 0,
      escudo = json['escudo'] ?? 0;

  // Constructor normal con assert
  Personaje({
    required this.clase,
    required this.nombre,
    required this._vida,
    required this.stamina,
    required this.escudo,
  }) : assert(_vida >= 0, "El valor de vida no puede ser negativo");

  @override
  String toString() =>
      "Nombre: $nombre | Clase: $clase | Vida: $_vida | Stamina: $stamina | Escudo: $escudo";
}
