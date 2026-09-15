// Estructuras de control - sesión
void main() {
  final edad = 13;
  final List<int> numeros = [1, 3, 16, 18];
  final int opcion = 6;
  int bandera =3 ;

  print("La edad es: $edad");
  print("El numero 0: ${numeros[0]}");

  /* if (edad > 18) {
    print("Es mayor de edad");
  } else {
    print("No es mayor de edad");
  } */

  // Operador ternario
  print("${edad > 18 ? 'SI' : 'NO'} es mayor de edad");

  // switch
  switch (opcion) {
    case 0:
      print("La opcion fue 0");
      break;
    case 1:
      print("La opcion fue 1");
      break;
    default:
      print("Opcion no valida");
  }

  // for-in
  print("Utilizando for in");
  for (int numero in numeros) {
    print("El numero es: $numero");
  }

  // for clásico
  print("Utilizando for clásico");
  for (int i = 0; i < numeros.length; i++) {
    print("Índice $i -> valor ${numeros[i]}");
  }

  // while
  print("Uso de while");
  while (bandera > 0) {
    print("Bandera = $bandera");
    bandera--;
  }
}