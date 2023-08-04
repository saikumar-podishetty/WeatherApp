//
//  TestView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 8/4/23.
//

import SwiftUI

struct TestView: View {
    
    var body: some View {
        ZStack {
            Button(action: {
                print("Button tapped")
            }) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.gray)
            }
            .buttonStyle(NeumorphicButtonStyle(shapes: .constant(.circle)))
            .frame(width: 100, height: 100)
                
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
