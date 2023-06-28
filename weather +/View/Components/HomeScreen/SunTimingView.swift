//
//  SunTimingView.swift
//  weather +
//
//  Created by Sandesh Naik on 28/06/23.
//

import SwiftUI

struct SunTimingView: View {
    var body: some View {
        ZStack {
            BackgroundShape()
                .stroke(LinearGradient(colors: [
                    Color.orange, .yellow, .orange, .appBackground
                ],
                                       startPoint: .leading,
                                       endPoint: .trailing),
                        lineWidth: 3)
            VStack {
                HStack {
                   Image(systemName: "sunrise.circle")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.yellow)
                    
                    Text("6:24 AM")
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text("7:24 PM")
                    Image(systemName: "sunset.circle")
                         .resizable()
                         .frame(width: 24, height: 24)
                         .foregroundColor(.orange)
                    
                }
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 100)
        .clipped()
    }
    
}

struct BackgroundShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: -1, y: rect.height/2))
            path.addCurve(to: CGPoint(x: rect.maxX + 4, y: rect.maxY - 18),
                          control1: CGPoint(x: rect.width/4, y: rect.height/2),
                          control2: CGPoint(x: rect.width/2, y: rect.height/1))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY + 1))
            path.addLine(to: CGPoint(x: -4, y: rect.maxY + 4))
            path.closeSubpath()
        }
    }
}

struct SunTimingView_Previews: PreviewProvider {
    static var previews: some View {
        SunTimingView()
            .background(Color.appBackground)
    }
}
