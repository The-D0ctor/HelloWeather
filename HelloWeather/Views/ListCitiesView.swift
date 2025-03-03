//
//  ContentView.swift
//  HelloWeather
//
//  Created by Sébastien Rochelet on 31/01/2025.
//

import SwiftUI

struct ListCitiesView: View {
    @State var searchText: String = ""
    @State var cities: [City] = City.cities
    
    var body: some View {
        NavigationStack {
            VStack {
                if (cities.isEmpty) {
                    Text("Aucun resultat")
                        .font(.title3)
                    Spacer()
                } else {
                    ScrollView {
                        ForEach(cities, id: \.self) { city in
                            NavigationLink {
                                CityDetailView(city: city)
                            } label: {
                                CityItemView(city: city)
                                    .frame(height: 170)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
            }
            .navigationTitle("Météo")
            .padding()
            .searchable(text: $searchText, prompt: "Ville ou aéroport")
            .onChange(of: searchText) { oldValue, newValue in
                if newValue.isEmpty {
                    cities = City.cities
                }
                else {
                    cities = City.cities.filter { city in
                        city.name.lowercased() .hasPrefix(newValue.lowercased())
                    }
                }
            }
        }
        .tint(.black)
    }
}

#Preview {
    ListCitiesView()
}
