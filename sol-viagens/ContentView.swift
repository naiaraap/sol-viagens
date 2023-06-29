//
//  ContentView.swift
//  sol-viagens
//
//  Created by Naiara de Almeida Pantuza on 28/06/23.
//

import SwiftUI

struct ContentView: View {
  
  
  
    var body: some View {
      GeometryReader { view in
        
        VStack{
          VStack {
            Text("sol viagens")
              .foregroundColor(Color.white)
              .font(.custom("Avenir Black", size: 20))
              .padding(.top, 50)
            
            
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
            
            
            
          }
          .frame(width: view.size.width, height: 180, alignment: .top)
          .background(Color.purple)
        
          
          HStack{
            Button("Hoteis") {
              /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.custom("Avenir Medium", size: 17))
            .background(.blue)
            .foregroundColor(.white)
            .frame(width: 100, height: 50, alignment: .center)
            
            
            Button("Pacotes") {
              /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.custom("Avenir Medium", size: 17))
            .foregroundColor(.white)
            .background(.orange)
            .frame(width: 100, height: 50, alignment: .center)
            
          }
          

          
          List {
            Text("Ceará")
            Text("Rio de Janeiro")
            Text("Atibaia")
            Text("Belo Horizonte")
          }
        }
        
      }
      
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
