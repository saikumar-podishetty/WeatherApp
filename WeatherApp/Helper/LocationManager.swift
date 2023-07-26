//
//  LocationManager.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import Foundation
import CoreLocation
import CoreLocationUI
import SwiftUI
import Combine

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    //MARK: properties
    let manager = CLLocationManager()
    @Published var location: CLLocationCoordinate2D?
    var subscription: AnyCancellable?
    
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
//        location.publisher.sink(receiveCompletion: { print("Longg in location:\($0)") }, receiveValue: { print("Longg Vaal in location:\($0)") })
        
//        location.publisher
        // print("Location manager:Long:\(location?.longitude)---Lat:\(location?.latitude)")
    }
    /*
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus {
            
        case .notDetermined:
            <#code#>
        case .restricted:
            <#code#>
        case .denied:
            <#code#>
        case .authorizedAlways:
            <#code#>
        case .authorizedWhenInUse:
            <#code#>
        @unknown default:
            <#code#>
        }
    }
    */
    //MARK: LocationManagerDelegate - didFailWithError
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Location failed:\(error)")
    }
}
