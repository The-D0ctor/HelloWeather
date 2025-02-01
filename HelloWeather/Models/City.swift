//
//  City.swift
//  HelloWeather
//
//  Created by Sébastien Rochelet on 31/01/2025.
//

import Foundation

struct City: Hashable {
    let name: String
    let hour: String
    let weather: String
    let imageName: String
    let tempCelsius: Double
    
    static let cities: [City] = [
        City(name: "Lyon", hour: "12:00", weather: "Ensoleillé", imageName: "sun", tempCelsius: 25),
        City(name: "Paris", hour: "12:00", weather: "Nuages prédominants", imageName: "clouds", tempCelsius: 10),
        City(name: "Marseille", hour: "12:00", weather: "Neige", imageName: "snow", tempCelsius: 1),
        City(name: "Lille", hour: "12:00", weather: "Pluie", imageName: "rain", tempCelsius: 17),
        City(name: "Toulouse", hour: "12:00", weather: "Belles éclaircies", imageName: "beautiful-clearing", tempCelsius: 8)
        ]
}
