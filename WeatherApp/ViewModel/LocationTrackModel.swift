//
//  LocationTrackModel.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/27/23.
//

import Foundation
import SwiftUI
import Combine

class LocationTrackVM: ObservableObject {
    //MARK: Properties
    @Published var locationManager: LocationManager {
        didSet {
            subscription = locationManager.objectWillChange.sink(receiveCompletion: { print(" in location:\($0)") }, receiveValue: { print("Vaal in location:\($0)") })
        }
    }
    var subscription: AnyCancellable?
    
    init(locationManager: LocationManager) {
        self.locationManager = locationManager

    }
    
    //MARK: Function to handle location finder
    func locationFinder() {
        locationManager
            .requestLocation()
        
        if let location = locationManager.location {
            print("Loc:\(location)")
        }
    }
    
    func result() {
        
    }
}
