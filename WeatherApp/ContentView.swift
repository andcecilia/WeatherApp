//
//  ContentView.swift
//  WeatherApp
//
//  Created by Cecilia Andrea Pesce on 07/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightblue"))
            
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeaherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 71)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.sun.fill",
                                   temperature: 71)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.fill",
                                   temperature: 71)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.sun.fill",
                                   temperature: 71)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 71)
                    
                }
                Spacer()
                Button {
                    print("lalala")
                } label: {
                    Text("Change Day Mode")
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .font(.system(size:15, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int

    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio (contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeaherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            
            Text("\(temperature)")
            
                .font(.system(size: 70, weight: .medium))
            
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}
