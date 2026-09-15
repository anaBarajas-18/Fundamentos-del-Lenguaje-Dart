// ACTIVIDAD media, mediana y moda
void main() {
  final List<int> datos = [4, 0, 9, 1, 7, 4, 3, 5, 4, 2, 0];

 
  final int cantidadMuestras = datos.length;

  print("Datos: $datos");
  print("Cantidad de muestras (n) = $cantidadMuestras");

 
  double suma = 0;
  for (int n in datos) {
    suma += n;
  }
  final double media = suma / cantidadMuestras;
  print("\nMedia = ${media.toStringAsFixed(2)}");

  final List<int> ordenados = List.from(datos)..sort();
  print("\nDatos ordenados: $ordenados");

  double mediana;
  final int n = ordenados.length;

  if (n % 2 == 0) {
    // Cantidad par
    final int centro1 = ordenados[n ~/ 2 - 1];
    final int centro2 = ordenados[n ~/ 2];
    mediana = (centro1 + centro2) / 2;
  } else {
    // Cantidad impar
    mediana = ordenados[n ~/ 2].toDouble();
  }
  print("Mediana = ${mediana.toStringAsFixed(2)}");

  final Map<int, int> frecuencias = {};
  for (int n in datos) {
    frecuencias[n] = (frecuencias[n] ?? 0) + 1;
  }
  print("\nFrecuencias: $frecuencias");

  
  int maxFrecuencia = 0;
  for (int f in frecuencias.values) {
    if (f > maxFrecuencia) maxFrecuencia = f;
  }

  final List<int> modas = [];
  frecuencias.forEach((valor, frecuencia) {
    if (frecuencia == maxFrecuencia) modas.add(valor);
  });

  if (maxFrecuencia == 1) {
    print("Moda = No hay moda (todos aparecen una vez)");
  } else if (modas.length == 1) {
    print("Moda = ${modas.first} (aparece $maxFrecuencia veces)");
  } else {
    print("Moda = Multimodal: $modas (cada uno aparece $maxFrecuencia veces)");
  }
}