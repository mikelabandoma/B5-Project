//
//  ContentView.swift
//  ArtemisX
//
//  Created by Elinor on 6/29/23.
//

import SwiftUI
import MapKit

struct Content: View {
    
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

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

