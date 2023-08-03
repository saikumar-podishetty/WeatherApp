//
//  NetworkHandler.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/20/23.
//

import Foundation

class NetworkRequest {
    //MARK: Function to handle URL Request
    fileprivate func apiRequest(baseUrl: URL, method: ApiRequestMethodType) -> URLRequest {
        var requestType = URLRequest(url: baseUrl)
        requestType.httpMethod = method.rawValue
        requestType.setValue("application/json", forHTTPHeaderField: "Accept")
        requestType.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let headers = [
            Service.xRapidAPIKey : Service.headerKey,
            Service.xRapidAPIHost : Service.headerHost
        ]
        requestType.allHTTPHeaderFields = headers
        return requestType
    }
}

 class NetworkHandler {
     //MARK: Function to handle API Request
     func apiHandler<T: Codable>(_ type:T.Type, serviceRequest: NetworkRequest,url: URL, method: ApiRequestMethodType, completionHandler: @escaping(Result<T,APIError>) -> Void){
         //Calling service request
        let request = serviceRequest.apiRequest(baseUrl: url, method: method)
        let dataTask = URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                completionHandler(.failure(.serverError))
                return
            }
            do {
                guard let data = data else {
                    completionHandler(.failure(.parsingError))
                    return
                }
                let dataResponse = try JSONDecoder().decode(T.self, from: data)
                completionHandler(.success(dataResponse))
            }catch {
                debugPrint("Error:\(error.localizedDescription)")
            }
        }
        dataTask.resume()
    }
}

class NetworkResponse {
    func apiResponse<T: Codable>(data: Data?, completionHandler: @escaping(Result<T,APIError>) -> Void) {
        do {
            guard let data = data else {
                completionHandler(.failure(.parsingError))
                return
            }
            let dataResponse = try JSONDecoder().decode(T.self, from: data)
            completionHandler(.success(dataResponse))
        }catch {
            debugPrint("Error:\(error.localizedDescription)")
        }
    }
}
