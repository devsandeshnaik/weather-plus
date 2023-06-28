//
//  WeeklyWeatherForcastView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct WeeklyWeatherForcastView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("This Week")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.leading)
                .padding(.top)
                
            ForEach(0 ..< 7 ) {_ in
                WeekdayWeatherInfoView()
            }
        }
        .foregroundColor(.white)
    }
}

struct WeeklyWeatherForcaseView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyWeatherForcastView()
            .background(Color.appBackground)
    }
}
