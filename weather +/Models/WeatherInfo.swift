//
//  WeatherInfo.swift
//  weather-app
//
//  Created by Sandesh Naik on 03/01/23.
//

import Foundation

struct CityWeatherInfo: Codable {
    
    let name: String
    let timezone: Double
    let coord: Coordinates
    let weather: Weather
    let main: WeatherDetail

    struct Coordinates: Codable {
        let lon: Double
        let lan: Double
    }
    
    struct Weather: Codable {
        let main: String
        let description: String
        let icon: String
    }
    
    struct WeatherDetail: Codable {
        let temp: Double
        let feels_like: Double
        let temp_min: Double
        let temp_max: Double
        let pressure: Double
        let humidity: Double
        let sea_level: Double
        let grnd_level: Double
    }
}

