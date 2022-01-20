//
//  ColorCircleView.swift
//  Light Changer
//
//  Created by Никита Рыжкин on 20.01.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .opacity(alpha)
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, alpha: 1)
    }
}
