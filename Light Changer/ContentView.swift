//
//  ContentView.swift
//  Light Changer
//
//  Created by Никита Рыжкин on 20.01.2022.
//

import SwiftUI

private let lightIsOn = 1.0
private let lightIsOff = 0.3

struct ContentView: View {
    @State var buttonTitle = "START"
    @State var redLight = lightIsOff
    @State var yellowLight = lightIsOff
    @State var greenLight = lightIsOff
    @State var lightColor = "red"
    
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                ColorCircleView(color: .red, opacity: redLight)
                ColorCircleView(color: .yellow, opacity: yellowLight)
                ColorCircleView(color: .green, opacity: greenLight)
                Spacer()
                Button(buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    switch lightColor {
                    case "red":
                        greenLight = lightIsOff
                        redLight = lightIsOn
                        lightColor = "yellow"
                    case "yellow":
                        redLight = lightIsOff
                        yellowLight = lightIsOn
                        lightColor = "green"
                    case "green":
                        yellowLight = lightIsOff
                        greenLight = lightIsOn
                        lightColor = "red"
                    default: break
                    }
                }
                .font(.title)
                .frame(minWidth: 150, minHeight: 50)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(50)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
