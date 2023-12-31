
import Foundation
import SwiftUI
import MapKit

struct MapViewRepresentable: UIViewRepresentable {
    
    let coordinateRegion: MKCoordinateRegion
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.region = coordinateRegion
        return mapView
    }

    func updateUIView(_ mapView: MKMapView, context: Context) {
        mapView.setRegion(coordinateRegion, animated: true)
    }
}

