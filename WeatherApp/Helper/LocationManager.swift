//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import Foundation
import CoreLocation
import CoreLocationUI

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    
    override init() {
            super.init()
            manager.delegate = self
        }
    
    func requestLocation() {
        manager.requestWhenInUseAuthorization()
        manager.requestAlwaysAuthorization()
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location failed:\(error)")
    }
}
