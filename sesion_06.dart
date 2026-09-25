void main() {
  Circulo fig = Circulo(0.0, 0.0, "VERDE", 5.0);
  print(fig.render());

  List<Figura> figuras = <Figura>[
    Circulo(0, 0, "ROJO", 5),
    Cuadrado(0, 0, "AZUL", 10),
  ];

  for (var f in figuras) {
    print("El area de la figura es: ${f.getArea()}");
    print(f.render());
  }
}

// clase abstracta
abstract class Figura {
  double x;
  double y;
  String color;

  Figura(this.x, this.y, this.color);

  // Método abstracto
  double getArea();

  String render() {
    // método concreto
    return "Dibujando la figura de color: $color, en el punto p($x, $y)";
  }
}

class Circulo extends Figura {
  double radio;

  Circulo(double x, double y, String color, this.radio) : super(x, y, color);

  @override
  double getArea() {
    return 3.14 * radio * radio;
  }
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(double x, double y, String color, this.lado) : super(x, y, color);

  @override
  double getArea() {
    return lado * lado;
  }

  @override
  String render() {
    return "Dibujando un cuadrado de color: $color, en el punto p($x, $y) con medida de lado: $lado";
  }
}
