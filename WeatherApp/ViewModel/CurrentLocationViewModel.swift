//
//  CurrentLocationViewModel.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/21/23.
//

import Foundation

class CurrentLocationVM: ObservableObject {
    //MARK: Properties
    @Published var model: CurrentLocationModel?
    private let serviceRequest = NetworkHandler()
    private let request = NetworkRequest()
    
    func currentLocationApiRequest(params:[String: Any]) {
        
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
                DispatchQueue.main.async {
                    self.model = data
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
