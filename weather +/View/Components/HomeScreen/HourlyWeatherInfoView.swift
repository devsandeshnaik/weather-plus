//
//  HourlyWeatherInfoView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct HourlyWeatherInfoView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("10:AM")
                .font(.caption)
                .fontWeight(.regular)
                
            Image(systemName: "cloud.fill")
                .padding(.vertical,4)
            
            Text("23°")
                .font(.title3)
                .fontWeight(.medium)
        }
        .frame(height: 80)
        .padding(4)
        .fontDesign(.rounded)
        .foregroundColor(.white)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .stroke(LinearGradient(colors: [.appGradientColorOne, .appGradientColorTwo],
                                       startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
        )
    }
}

struct HourlyWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyWeatherInfoView()
            .background(Color.appBackground)
    }
}
