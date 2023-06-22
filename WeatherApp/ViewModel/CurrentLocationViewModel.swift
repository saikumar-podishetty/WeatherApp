//
//  CurrentLocationViewModel.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/21/23.
//

import Foundation

class CurrentLocationViewModel: ObservableObject {
    //MARK: Properties
    @Published var model: CurrentLocationModel?
    private let serviceRequest = NetworkHandler()
    private let request = NetworkRequest()
    
    func currentLocationApiRequest() {
        let params = [
             "lat" : "37.81021",
             "lon": "122.42282",
             "timezone": "auto",
             "language": "en",
             "units": "auto"
        ]
        
        //Creating url components
        var components = URLComponents()
        components.scheme = Service.scheme
        components.host = Service.host
        components.path = EndPoints.currentLocation
        components.queryItemsDictionary = params
        
        guard let url = components.url else {
            return
        }
        
        serviceRequest.apiHandler(CurrentLocationModel.self, serviceRequest: request, url: url, method: .GET) { result in
            switch result {
            case .success(let data):
                print(data)
            case .failure(let error):
                print(error)
            }
        }
    }
}
