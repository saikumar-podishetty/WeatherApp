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
    //MARK: properties
    let manager = CLLocationManager()
    @Published var location: CLLocationCoordinate2D?
    
    override init() {
            super.init()
            manager.delegate = self
        }
    
    //MARK: Function to request location
    func requestLocation() {
        manager.requestWhenInUseAuthorization()
        manager.requestAlwaysAuthorization()
        manager.requestLocation()
    }
    
    //MARK: LocationManagerDelegate - didUpdateLocations
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
    }
    
    //MARK: LocationManagerDelegate - didFailWithError
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location failed:\(error)")
    }
}
