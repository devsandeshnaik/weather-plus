//
//  WeekdayWeatherInfoView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct WeekdayWeatherInfoView: View {
    var body: some View {
        HStack {
            Text("Monday")
            Spacer()
            Image(systemName: "cloud.fill")
            Spacer()
            
            Group {
                Text("32°")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text("32°")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(.appGradientColorOne)
                
            }
        }
        .padding(.horizontal)
        .frame(height: 32)
        .foregroundColor(.white)
        .fontDesign(.rounded)
        .font(.body)
    }
}

struct WeekdayWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayWeatherInfoView()
            .previewLayout(.sizeThatFits)
            .background(Color.appBackground)
    }
}
