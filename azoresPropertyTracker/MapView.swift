//
//  MapView.swift
//  azoresPropertyTracker
//
//  Created by Cody Clifton on 3/4/24.
//
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    private let center = CLLocationCoordinate2D(latitude: 37.741249, longitude: -25.675594)
    private let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)

    func makeUIView(context: Context) -> MKMapView {
        return MKMapView(frame: .zero)
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
        let region = MKCoordinateRegion(center: center, span: span)
        uiView.setRegion(region, animated: true)

        uiView.isScrollEnabled = false
        uiView.isZoomEnabled = false
        uiView.isRotateEnabled = false
        uiView.isUserInteractionEnabled = false
    }

    typealias UIViewType = MKMapView
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
