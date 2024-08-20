//
//  MapView.swift
//  TrailStatusPro
//
//  Created by Eric Forbes on 8/20/24.
//
import SwiftUI
import MapKit

private var region: MKCoordinateRegion {
  MKCoordinateRegion(
    center: CLLocationCoordinate2D(
      latitude: 34.161,
      longitude: -84.538),
    span: MKCoordinateSpan(
      latitudeDelta: 0.01,
      longitudeDelta: 0.01
    )
  )
}


struct MapView: View {
  @State var showSheet: Bool = true
  
  var body: some View {
    ZStack {
      Map(initialPosition: .region(region))
    
    }
    .sheet(isPresented: $showSheet) {
      SheetViewMain()
        .interactiveDismissDisabled(true)
        .presentationDetents([.fraction(0.3), .medium, .large])
    }
  }
}




#Preview {
 MapView()
    .preferredColorScheme(.dark)
  //SheetView()
}
