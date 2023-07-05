//
//  ContentView.swift
//  sol-viagens
//
//  Created by Naiara de Almeida Pantuza on 28/06/23.
//

import SwiftUI

struct ContentView: View {
  
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
    var body: some View {
      NavigationView {
        GeometryReader { view in
          VStack{
            
            HeaderView()
              .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
            
            
            
            List(trips, id: \.self) { trip in
              NavigationLink(destination: MapView(coordinate: trip.location)){
                TripCellView(trip: trip)
              }
            }
            .listStyle(PlainListStyle())
            .padding(.top, self.horizontalSizeClass == .compact ? 30: 40)
            .padding(.bottom, self.horizontalSizeClass == .compact ? 10: 20)
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
