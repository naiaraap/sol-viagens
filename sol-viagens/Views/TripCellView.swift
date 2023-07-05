//
//  TripCellView.swift
//  sol-viagens
//
//  Created by Naiara de Almeida Pantuza on 03/07/23.
//

import SwiftUI

struct TripCellView: View {
  
  var trip: Trip
  
  @Environment(\.horizontalSizeClass) var horizontalSizeClass
  
  var body: some View {
    VStack (alignment: .leading) {
      Text(trip.title)
        .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
      
      Image(trip.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(height: self.horizontalSizeClass == .compact ? 125: 200)
        .clipped()
      HStack {
        Text(trip.numberOfDays)
          .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
        Spacer()
        Text(trip.value)
          .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 24))
      }
    }
  }
}

struct TripCellView_Previews: PreviewProvider {
  static var previews: some View {
    
    Group {
      
      TripCellView(trip: trips[0])
        .environment(\.horizontalSizeClass, .compact)
        .previewLayout(.fixed(width: 360, height: 200))
      
      TripCellView(trip: trips[0])
        .environment(\.horizontalSizeClass, .regular)
        .previewLayout(.fixed(width: 835, height: 320))
    }
    
  }
}
