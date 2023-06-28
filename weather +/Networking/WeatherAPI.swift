//
//  WeatherAPI.swift
//  weather-app
//
//  Created by Sandesh Naik on 31/12/22.
//

import Foundation
enum NetworkError: Error {
    case unabeToGenerateRequest
    case invalidEndpoint
    case parsingError
}

struct WeatherAPI {
    
    private let session = URLSession.shared
    
    func makeRequest<T: Codable>(for endpoint: Endpoint) async -> Result<T, NetworkError> {
        guard let request = endpoint.generateURLRequest() else { return .failure(.unabeToGenerateRequest) }
        let response = try? await session.data(for: request)
        guard let response = response else {
            return .failure(.invalidEndpoint)
        }
        
        do {
           
            dump(String(decoding: response.0, as: UTF8.self))
            let result = try JSONDecoder().decode(T.self, from: response.0)
            return .success(result)
        } catch {
            return .failure(.parsingError)
        }
    }
}
