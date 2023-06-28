//
//  WeatherEndpoint.swift
//  weather-app
//
//  Created by Sandesh Naik on 31/12/22.
//

import Foundation
import MapKit

enum WeatherEndpoint  {
    case search(city: String)
}


extension WeatherEndpoint: Endpoint {
    
    var scheme: String {
        return "https"
    }
    var baseURL: String {
        return "api.openweathermap.org"
    }
    
    var path: String {
        switch self {
        case .search(_):
            return "/data/2.5/weather"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        case .search(city: let city):
            return [URLQueryItem(name: "q", value: city),
                    URLQueryItem(name: "appid", value: "80baf93baed6c73261d33f45e97ffb3e")]
        }
    }
    
    var method: String {
        return "get"
    }
    
    func generateURLRequest() -> URLRequest? {
        var components = URLComponents()
        components.scheme = scheme
        components.host = baseURL
        components.path = path
        components.queryItems = queryItems
        
        guard let url = components.url else { return nil }
        var request = URLRequest(url: url)
        request.httpMethod = method
        return request
    }
}
