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
          .foregroundColor(Color.white)
          .font(.custom("Avenir Black", size: 20))
          
        
        Text("ESPECIAL")
          .foregroundColor(Color.white)
          .font(.custom("Avenir Book", size: 20))
          .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
          .padding(.leading, 30)
        
        Text("BRASIL")
          .foregroundColor(Color.white)
          .font(.custom("Avenir Black", size: 23))
          .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
          .padding(.leading, 30)
        
        
        List {
          Text("Ceará")
          Text("Rio de Janeiro")
          Text("Atibaia")
          Text("Belo Horizonte")
        }
      }
      .background(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
