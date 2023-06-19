//
//  InitialView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        ZStack {
            Image("black_clouds")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                Image("Weather_Logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .padding(20)
              Label("**Weather App**", systemImage: "")
                    .labelStyle(.titleOnly)
                    .font(.system(size: 30))
                Spacer()
                Button {
                    
                }label: {
                    Text("**Continue**")
                    .frame(width: 250, height: 35)
                }
                .buttonStyle(.bordered)
                .background(.white)
                .cornerRadius(20)
                .foregroundColor(Color.black.opacity(0.8))
                .font(.system(size: 24))
                .shadow(radius: 10)
                Spacer()
                
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
