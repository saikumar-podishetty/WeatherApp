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
    static let unitsKey = "units"
    static let unitsValue = "auto"
}
