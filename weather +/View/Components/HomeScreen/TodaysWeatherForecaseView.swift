//
//  TodaysWeatherForecaseView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct TodaysWeatherForecaseView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Today")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(0 ..< 24) {_ in
                        HourlyWeatherInfoView()
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 90)
        }
        .fontDesign(.rounded)
        .foregroundColor(.white)
    }
}

struct TodaysWeatherForecaseView_Previews: PreviewProvider {
    static var previews: some View {
        TodaysWeatherForecaseView()
            .previewLayout(.fixed(width: 400, height: 140))
            .background(Color.appBackground)
    }
}
