//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Cecilia Andrea Pesce on 12/03/24.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
            Text(title)
                .frame(width: 200, height: 50)
                .background(backgroundColor)
                .foregroundStyle(textColor)
                .font(.system(size:15, weight: .bold, design: .default))
                .cornerRadius(10)
        }
}
