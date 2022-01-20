//
//  ContentView.swift
//  Light Changer
//
//  Created by Никита Рыжкин on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State var title = "Start"
    @State var redAlpha = 0.3
    @State var yellowAlpha = 0.3
    @State var greenAlpha = 0.3
    @State var lightColor = "red"
    
    var body: some View {
        VStack {
            ColorCircleView(color: .red, alpha: redAlpha)
            ColorCircleView(color: .yellow, alpha: yellowAlpha)
            ColorCircleView(color: .green, alpha: greenAlpha)
            Spacer()
            Button(title) {
                if title == "Start" {
                    title = "Next"
                }
                switch lightColor {
                case "red":
                    greenAlpha = 0.3
                    redAlpha = 1
                    lightColor = "yellow"
                case "yellow":
                    redAlpha = 0.3
                    yellowAlpha = 1
                    lightColor = "green"
                case "green":
                    yellowAlpha = 0.3
                    greenAlpha = 1
                    lightColor = "red"
                default: break
            }
                }
            .font(.title)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
