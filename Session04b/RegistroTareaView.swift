//
//  RegistroTareaView.swift
//  Session04b
//
//  Created by DAMII on 25/11/24.
//

import SwiftUI

struct RegistroTareaView : View {
    @ObservedObject var modelo: ModeloTareas
    @Binding var mostrarFormulario: Bool

    @State private var titulo: String = ""
    @State private var descripcion: String = ""
    
    var body: some View {
        VStack {
            
            Form {
                TextField("Título", text: $titulo)
                TextField("Descripción", text: $descripcion)
                
                Button("Guardar") {
                    let nuevaTarea = Tarea(
                        titulo: titulo,
                        descripcion: descripcion)
                    // agrega tarea en la lista de tareas
                    modelo.tareas.append(nuevaTarea)
                    mostrarFormulario = false
                }
            }
            
        }
    }
}
