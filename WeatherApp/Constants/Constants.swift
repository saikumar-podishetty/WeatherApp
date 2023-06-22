//
//  Constants.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/21/23.
//

import Foundation

struct Service {
    static let scheme = "https"
    static let host = "ai-weather-by-meteosource.p.rapidapi.com"
    static let xRapidAPIKey = "X-RapidAPI-Key"
    static let xRapidAPIHost = "X-RapidAPI-Host"
    static let headerKey = "1f5fdffd8fmsh93e374279f85b0ap1a3686jsn50ffad5da1fb"
    static let headerHost = "ai-weather-by-meteosource.p.rapidapi.com"
}

struct EndPoints {
    static let currentLocation = "/current"
}

struct InitialScreen {
    static let imageBlackClouds = "black_clouds"
    static let imageWeatherLogo = "Weather_Logo"
}
