//
//  CitiItemView.swift
//  HelloWeather
//
//  Created by Sébastien Rochelet on 31/01/2025.
//

import SwiftUI

struct CityItemView: View {
    let city: City
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(city.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(city.hour)
                        .font(.subheadline)
                    Spacer()
                    Text(city.weather)
                        .font(.subheadline)
                }
                Spacer()
                Text("\(city.tempCelsius, specifier: "%.0f") °C")
                    .font(.largeTitle)
            }
            .padding()
        }
        .background {
            Image(city.imageName)
                .resizable()
                .scaledToFill()
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(5)
        .foregroundStyle(.white)
    }
}

#Preview {
    CityItemView(city: City.cities[0])
}
