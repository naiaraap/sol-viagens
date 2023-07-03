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
            Button(action: {}) {
              Text("Hotéis")
                .foregroundColor(.white)
                .font(.custom("Avenir Medium", size: 17))
                
            }
            .frame(width: 100, height: 50, alignment: .center)
            .overlay(
              RoundedRectangle(cornerRadius: 10)
                .stroke(Color.blue, lineWidth: 10))
            .background(.blue)
            .offset(x: 50)
            
            Spacer()
            
            Button(action: {}) {
              Text("Pacotes")
                .foregroundColor(.white)
                .font(.custom("Avenir Medium", size: 17))
                
            }
            .frame(width: 100, height: 50, alignment: .center)
            .overlay(
              RoundedRectangle(cornerRadius: 10)
                .stroke(Color.orange, lineWidth: 10))
            .background(.orange)
            .offset(x: -50)
            
            
            
            
          }
          .offset(y: -35)
          

          List(trips, id: \.self) { trip in
            VStack (alignment: .leading) {
              Text(trip.title)
              Image(trip.image)
                .resizable()
                .frame(height: 125)
              HStack {
                Text(trip.numberOfDays)
                Spacer()
                Text(trip.value)
              }
            }
          }
        }
        //.edgesIgnoringSafeArea(.all)
      
      }
      
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
