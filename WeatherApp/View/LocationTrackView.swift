//
//  LocationTrackView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/27/23.
//

import SwiftUI

struct LocationTrackView: View {
    @ObservedObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            
        }
        .onAppear() {
            locationFinder()
        }
        
        
        
        
    }
        
    
    func locationFinder() {
        locationManager
            .requestLocation()
//        locationManager.location
        locationManager.location.publisher.sink(receiveCompletion: { print("Longg:\($0)") }, receiveValue: { print("Longg Vaal:\($0)") })
        
    }
    
}

//struct LocationTrackView_Previews: PreviewProvider {
//    static var previews: some View {
//        LocationTrackView(location: <#LocationManager#>)
//    }
//}
