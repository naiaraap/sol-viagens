//
//  TripCellView.swift
//  sol-viagens
//
//  Created by Naiara de Almeida Pantuza on 03/07/23.
//

import SwiftUI

struct TripCellView: View {
  
  var trip: Trip
  
  var body: some View {
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

struct TripCellView_Previews: PreviewProvider {
    static var previews: some View {
        TripCellView(trip: trips[0])
        .previewLayout(.fixed(width: 350, height: 200))
    }
}
