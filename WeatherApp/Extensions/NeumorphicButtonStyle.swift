//
//  NeumorphicButtonStyle.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 8/4/23.
//

import Foundation
import SwiftUI



struct NeumorphicButtonStyle: ButtonStyle {
    @Binding var shapes: Shapes
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        switch shapes {
        case .circle:
            configuration.label
                .padding(30)
                .background(
                    Group {
                        if configuration.isPressed {
                            circleViewWithoutShadow()
                        } else {
                            circleViewWithShadow()
                        }
                    }
                )
        case .rectangle:
            configuration.label
                .padding(30)
                .background(
                    Group {
                        if configuration.isPressed {
                            rectangleViewWithoutShadow()
                        } else {
                            rectangleViewWithShadow()
                        }
                    }
                )
        case .roundedRectangle:
            configuration.label
                .padding(30)
                .background(
                    Group {
                        if configuration.isPressed {
                            roundedRectangleViewWithoutShadow()
                        } else {
                            roundedRectangleViewWithShadow()
                        }
                    }
                )
        case .capsule:
            configuration.label
                .padding(30)
                .background(
                    Group {
                        if configuration.isPressed {
                            capsuleViewWithoutShadow()
                        } else {
                            capsuleViewWithShadow()
                        }
                    }
                )
        case .ellipse:
            configuration.label
                .padding(30)
                .background(
                    Group {
                        if configuration.isPressed {
                            ellipseViewWithoutShadow()
                        } else {
                            ellipseViewWithShadow()
                        }
                    }
                )
        }
    }
    
    //MARK: Creating ViewBuilders to reduce unnessacary code
    @ViewBuilder
    func circleViewWithoutShadow() -> some View {
        
        Circle()
            .fill(Color.offWhite)
    }
    
    @ViewBuilder
    func circleViewWithShadow() -> some View {
        
        Circle()
            .fill(Color.offWhite)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
    
    @ViewBuilder
    func rectangleViewWithoutShadow() -> some View {
        
        Rectangle()
            .fill(Color.offWhite)
    }
    
    @ViewBuilder
    func rectangleViewWithShadow() -> some View {
        
        Rectangle()
            .fill(Color.offWhite)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
    
    @ViewBuilder
    func roundedRectangleViewWithoutShadow() -> some View {
        
        RoundedRectangle(cornerRadius: 25,style: .continuous)
            .fill(Color.offWhite)
    }
    
    @ViewBuilder
    func roundedRectangleViewWithShadow() -> some View {
        
        RoundedRectangle(cornerRadius: 25,style: .continuous)
            .fill(Color.offWhite)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
    
    @ViewBuilder
    func capsuleViewWithoutShadow() -> some View {
        
        Capsule()
            .fill(Color.offWhite)
    }
    
    @ViewBuilder
    func capsuleViewWithShadow() -> some View {
        
        Capsule()
            .fill(Color.offWhite)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
    
    @ViewBuilder
    func ellipseViewWithoutShadow() -> some View {
        
        Ellipse()
            .fill(Color.offWhite)
    }
    
    @ViewBuilder
    func ellipseViewWithShadow() -> some View {
        
        Ellipse()
            .fill(Color.offWhite)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}

