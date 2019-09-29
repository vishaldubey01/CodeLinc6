//
//  MapView.swift
//  ConnectCorps
//
//  Created by Harish Yerra on 9/29/19.
//  Copyright © 2019 Harish Yerra. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var location: CLLocationCoordinate2D
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: location, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: CLLocationCoordinate2D(latitude: 1, longitude: 1))
    }
}
