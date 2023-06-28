//
//  ContentView.swift
//  sol-viagens
//
//  Created by Naiara de Almeida Pantuza on 28/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Text("sol viagens")
        Text("ESPECIAL")
        Text("BRASIL")
        
        List {
          Text("Ceará")
          Text("Rio de Janeiro")
          Text("Atibaia")
          Text("Belo Horizonte")
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
