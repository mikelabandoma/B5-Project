//
//  WomansSpotlight.swift
//  B5 Project
//
//  Created by Scholar on 6/30/23.
//

import SwiftUI
import MapKit

struct WomansSpotlight: View {
    
    @ObservedObject var locationManager = LocationManager()
    @State private var landmarks: [Landmark] = [Landmark]()
    @State private var search: String = ""
    
    private func getNearByLandmarks() {
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = search
        
        let search = MKLocalSearch(request: request)
        search.start { (response, error) in
            if let response = response {
                
                let mapItems = response.mapItems
                self.landmarks = mapItems.map {
                    Landmark(placemark: $0.placemark)
                }
                
            }
        }
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            
            MapView(landmarks: landmarks)
                .ignoresSafeArea()
                .accentColor(.pink)
            
            TextField("Search", text: $search, onEditingChanged: { _ in })
            {
                //commit
                self.getNearByLandmarks()
            }.textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .offset(y:44)
            
        }
    }
    
    }

struct WomansSpotlight_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


