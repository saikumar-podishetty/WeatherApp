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
            Color.offWhite
            Button(action: {
                print("Button tapped")
            }) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    
                    
            }
            .buttonStyle(NeumorphicButtonStyle(shapes: .constant(.circle), width: .constant(100), height: .constant(100)))
            
                
            
            
            
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
