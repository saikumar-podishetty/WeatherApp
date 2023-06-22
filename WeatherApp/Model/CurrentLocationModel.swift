//
//  CurrentLocationModel.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/21/23.
//

import Foundation

// MARK: - CurrentLocationModel
struct CurrentLocationModel: Codable {
    let lat, lon: String
    let elevation: Int
    let timezone, units: String
    let current: Current
}

// MARK: - Current
struct Current: Codable {
    let icon: String
    let iconNum: Int
    let summary: String
    let temperature, feelsLike: Double
    let windChill: Double
    let dewPoint: Double
    let wind: Wind
    let precipitation: Precipitation
    let cloudCover: Int
    let ozone: Double
    let pressure: Int
    let uvIndex: Double
    let humidity: Int
    let visibility: Double

    enum CodingKeys: String, CodingKey {
        case icon
        case iconNum = "icon_num"
        case summary, temperature
        case feelsLike = "feels_like"
        case windChill = "wind_chill"
        case dewPoint = "dew_point"
        case wind, precipitation
        case cloudCover = "cloud_cover"
        case ozone, pressure
        case uvIndex = "uv_index"
        case humidity, visibility
    }
}

// MARK: - Precipitation
struct Precipitation: Codable {
    let total: Int
    let type: String
}

// MARK: - Wind
struct Wind: Codable {
    let speed, gusts: Double
    let angle: Int
    let dir: String
}
