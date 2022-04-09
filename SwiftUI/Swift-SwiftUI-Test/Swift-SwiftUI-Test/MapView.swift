//
//  MapView.swift
//  Swift-SwiftUI-Test
//
//  Created by 김대희 on 2022/04/06.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 36.3914787, longitude: 127.3633551),
        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.05)
    )
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: [])
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
