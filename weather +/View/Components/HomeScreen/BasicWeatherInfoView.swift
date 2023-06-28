//
//  BasicWeatherInfoView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct BasicWeatherInfoView: View {
    var body: some View {
        ZStack {
            Color.appBackground
            GeometryReader { geo in
                Circle()
                    .fill(LinearGradient(colors: [
                        Color.appGradientColorOne,
                        Color.appGradientColorTwo],
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing)
                    )
                    .frame(height: 300)
                    .position(x: geo.size.width - 50, y: geo.frame(in: .local).minY + 100)
                    .overlay(alignment: .center) {
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .foregroundColor(.secondary.opacity(0.25))
                            .clipped()
                            .frame(width: 170, height: 110)
                    }
            }
            Circle()
                .stroke(lineWidth: 2)
                .fill(.white.opacity(0.01))
                .frame(width: 240 ,height: 240)
                .offset(x: -100, y: 0)
        }
        .frame(height: 300)
        .overlay {
            VStack {
                Spacer()
                HStack {
                    VStack() {
                      Text("San francisco")
                            .font(.title)
                        
                        Text("18°")
                            .font(.system(size: 100, weight: .light, design: .rounded))
                        
                        Text("Cloudy")
                            .font(.title2)
                            .fontWeight(.light)
                    }
                    Spacer()
                }
                .fontDesign(.rounded)
                .fontWeight(.light)
                .padding(.horizontal)
                
                Spacer()
                
                HStack {
                    Group {
                        Image(systemName: "drop")
                            .scaledToFit()
                        Text("13%")
                    }
                    Spacer()
                    Group {
                        Image(systemName: "barometer")
                            .scaledToFit()
                        Text("0.554mBar")
                    }
                    Spacer()
                    Group {
                        Image(systemName: "wind")
                            .scaledToFit()
                        Text("9km/h")
                    }
                }
                .padding(.bottom,8)
                .padding(.horizontal, 24)
            }
        }
        .foregroundColor(.white)
    }
}

struct BasicWeatherInfoView_Previews: PreviewProvider {
    static var previews: some View {
        BasicWeatherInfoView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")
        
        BasicWeatherInfoView()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE")
    }
}
