//
//  InitialView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import SwiftUI
import CoreLocation

struct InitialView: View {
    //MARK: Properties
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        ZStack {
            Image(InitialScreen.imageBlackClouds)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                Image(InitialScreen.imageWeatherLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .padding(20)
                Label("**Weather App**", systemImage: "")
                    .labelStyle(.titleOnly)
                    .font(.system(size: 30))
                Spacer()
                Spacer()
                Spacer()
                Button {
                    //Calling location request on button click
                    locationManager.requestLocation()
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
