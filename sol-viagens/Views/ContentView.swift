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
