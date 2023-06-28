//
//  HomeScreen.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack {
            Color.appBackground.edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                VStack {
                    BasicWeatherInfoView()
                    SunTimingView()
                    TodaysWeatherForecaseView()
                    WeeklyWeatherForcastView()
                }
            }
        }

    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
