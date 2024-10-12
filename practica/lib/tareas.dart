
import 'dart:io';
void main(){
   List<String> tareas = []; 

  while (true) {
    print('\n--- Menú de Tareas ---');
    print('1. Añadir tarea');
    print('2. Marcar tarea como realizada');
    print('3. Mostrar tareas');
    print('4. Salir');
    stdout.write('Selecciona una opción: ');

    String? opcion = stdin.readLineSync();

    if (opcion == '1') {
      
      stdout.write('Introduce el nombre de la tarea: ');
      String? nombreTarea = stdin.readLineSync();
      if (nombreTarea != null && nombreTarea.isNotEmpty) {
        tareas.add(nombreTarea);
        print('Tarea añadida: $nombreTarea');
      } else {
        print('Nombre de tarea no válido.');
      }
    } else if (opcion == '2') {
     
      mostrarTareas(tareas);
      stdout.write('Introduce el número de la tarea a marcar como realizada: ');
      String? indexStr = stdin.readLineSync();
      int index = int.tryParse(indexStr ?? '') ?? -1;
      if (index >= 0 && index < tareas.length) {
        print('Tarea marcada como realizada: ${tareas[index]}');
        tareas.removeAt(index); 
      } else {
        print('Número de tarea no válido.');
      }
    } else if (opcion == '3') {
      
      mostrarTareas(tareas);
    } else if (opcion == '4') {
      
      print('Saliendo...');
      break; 
    } else {
      print('Opción no válida. Por favor selecciona otra opción.');
    }
  }
}

void mostrarTareas(List<String> tareas) {
  if (tareas.isEmpty) {
    print('No hay tareas en la lista.');
  } else {
    print('\n--- Lista de Tareas ---');
    for (int i = 0; i < tareas.length; i++) {
      print('$i: ${tareas[i]}');
    }
  }
}