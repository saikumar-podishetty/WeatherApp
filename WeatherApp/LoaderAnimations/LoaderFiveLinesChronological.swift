//
//  LoaderFiveLinesChronological.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 7/6/23.
//

import SwiftUI

struct LoaderFiveLinesChronological: View {
    @State var isAnimating: Bool = false
    let timing: Double
    let maxCounter: Int = 5
    
    let frame: CGSize
    let primaryColor: Color
    init(color: Color = .black, size: CGFloat = 50, speed: Double = 0.5) {
        timing = speed
        frame = CGSize(width: size, height: size)
        primaryColor = color
    }
    var body: some View {
        HStack(spacing: frame.width / 10) {
            ForEach(0..<maxCounter) { index in
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(primaryColor)
                    .frame(maxHeight: isAnimating ? frame.height / 3 : .infinity)
                    .animation(
                        Animation
                            .easeOut(duration: timing / 2)
                            .delay(timing)
                            .repeatForever(autoreverses: true)
                            .delay(timing / Double(maxCounter) * Double(index + 1))
                    )
            }
        }
        .frame(width: frame.width, height: frame.height, alignment: .center)
        .onAppear {
            isAnimating.toggle()
        }
    }
}

struct LoaderFiveLinesChronological_Previews: PreviewProvider {
    static var previews: some View {
        LoaderFiveLinesChronological()
    }
}
