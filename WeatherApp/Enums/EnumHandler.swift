//
//  EnumHandler.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/20/23.
//

import Foundation

//Handles Api request methods
enum ApiRequestMethodType: String {
    case GET, POST, PUT, DELETE, PATCH
}

//Handles error types
enum APIError: Error {
    case internalError
    case serverError
    case parsingError
}

//Handles element shapes
enum Shapes {
    case circle
    case roundedRectangle
    case rectangle
    case capsule
    case ellipse
}
