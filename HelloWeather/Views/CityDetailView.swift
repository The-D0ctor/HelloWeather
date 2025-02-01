//
//  CityDerailView.swift
//  HelloWeather
//
//  Created by Sébastien Rochelet on 31/01/2025.
//

import SwiftUI

struct CityDetailView: View {
    let city: City
    @State var isCelcius: Bool = true
    
    var body: some View {
        VStack() {
            Spacer()
            Text(city.name)
                .font(Font.system(size: 50, weight: .bold, design: .default))
            Text("\(isCelcius ? city.tempCelsius : city.tempCelsius * 9/5 + 32, specifier: "%.0f")\(isCelcius ? "°C" : "°F")")
                .font(Font.system(size: 100, weight: .bold, design: .default))
            Text(city.weather)
                .font(Font.system(size: 50, weight: .bold, design: .default))
                .multilineTextAlignment(.center)
            Spacer()
            Button {
                isCelcius.toggle()
            } label: {
                Text("Afficher la température en \(isCelcius ? "Fahrenheit" : "Celsius")")
                    .padding()
                    .foregroundStyle(.black)
                    .font(.title)
                    .background(Color.white.opacity(0.5))
                    .clipShape(RoundedRectangle(cornerRadius: 15))

            }
            Spacer()
        }
        .foregroundStyle(.white)
        .background {
            Image(city.imageName)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    CityDetailView(city: City.cities[0])
}
