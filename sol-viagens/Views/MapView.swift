//
//  MapView.swift
//  sol-viagens
//
//  Created by Naiara de Almeida Pantuza on 05/07/23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  
  var coordinate: CLLocationCoordinate2D
    
  func makeUIView(context: Context) -> MKMapView {
    return MKMapView(frame: .zero)
  }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
      let coordinate = CLLocationCoordinate2D(
        latitude: -23.644159, longitude: -46.527891)
      let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
      let region = MKCoordinateRegion(center: coordinate, span: span)
      uiView.setRegion(region, animated: true)
    }
  
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
      MapView(coordinate: trips[0].location)
    }
}
