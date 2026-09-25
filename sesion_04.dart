//Sesion 04

//Funcion de entrada principal
void main() {
  print("Esta es la sesion de funciones");
  suma();
  print(sumaStr());
  print(sumaP(7, 3));
  print(sumaPO(14));
  print(sumaPNom(a: 3, b: 14));
}

//funcion sin parametrs
void suma() {
  print("a+b =c");
}

//funcin sin parametros que retorna un valor
String sumaStr() {
  return "a+b=c";
}

/**funcion con parametros que retorna un valor
 * uso; sumaPO(14), SumaPo(14, 2)
*/
String sumaP(int a, int b) {
  return "$a + $b = ${a + b}";
}

//fncion con parametros opcionales que retorna un valor
String sumaPO(int a, [int? b]) {
  b = b ?? 0;
  return "$a + $b = ${a + b}";
}

/**
 * funcion con parametros opcionales tipo2
 * uso; sumaPO2(14), SumaPo2(14, 2)
 */
String sumaPO2(int a, [int? b]) {
  b ??= 0;
  return "$a + $b = ${a + b}";
}

/**funcion con parametros nombrados
 * a es un parametro opcional con valor por defecto
 * b es un parametro obligatorio
 * uso; sumaPNom(a: 3, b: 14), print (sumaPNom(b: 14))
 */
String sumaPNom({int a = 0, required int b}) {
  return "$a + $b = ${a + b}";
}
