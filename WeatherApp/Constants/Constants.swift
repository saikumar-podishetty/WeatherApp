//
//  Constants.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/21/23.
//

import Foundation

struct Service {
    static let scheme = "https"
    static let host = "api.weatherapi.com"
    static let xRapidAPIKey = "X-RapidAPI-Key"
    static let xRapidAPIHost = "X-RapidAPI-Host"
    static let headerKey = "1b3d7d06171140b3844101349231109"
    static let headerHost = "api.weatherapi.com"
}

struct EndPoints {
    static let currentLocation = "/v1/current.json"
    static let findPlaces = "/find_places"
    static let findPlacesPrefix = "/find_places_prefix"
    static let nearestPlace = "/nearest_place"
    static let minutelyForeCast = "/minutely"
    static let hourlyForeCast = "/hourly"
    static let dailyForeCast = "/daily"
    static let alertForeCast = "/alerts"
    static let astronomicalForeCast = "/astro"
    static let historicalForeCast = "/time_machine"
    static let weatherStatisticsForeCast = "/weather_statistics"
    
}

struct InitialScreen {
    static let imageBlackClouds = "black_clouds"
    static let imageWeatherLogo = "Weather_Logo"
}

struct Params {
    static let latitudeKey = "lat"
    static let longitudeKey = "lon"
    static let timeZoneKey = "timezone"
    static let timeZoneValue = "auto"
    static let languageKey = "language"
    static let languageValue = "en"
    static let key = "key"
    static let q = "q"
    static let aqi = "aqi"
    static let aqiValue = "no"
}
