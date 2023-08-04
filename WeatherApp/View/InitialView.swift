//
//  InitialView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import SwiftUI
import CoreLocation
import Combine

struct InitialView: View {
    //MARK: Properties
    @StateObject var locationManager = LocationManager()
    @State private var showDetails = false
    @State private var showLoader = false
    
    var body: some View {
        NavigationStack {
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
                        .foregroundColor(Color.black.opacity(0.8))
                        .font(.system(size: 24))
                        .shadow(radius: 10)
                    Spacer()
                    Button {
                        locationManager.requestLocation()
                        showDetails = true
                    }label: {
                        Text("**Continue**")
                    }
                    .buttonStyle(NeumorphicButtonStyle(shapes: .constant(.roundedRectangle), width: .constant(250), height: .constant(55)))
                    .foregroundColor(Color.black.opacity(0.8))
                    .font(.system(size: 24))
                    Spacer()
                }
            }
            .navigationDestination(isPresented: $showDetails) {
                if let location = locationManager.location {
                    MainView(location: location)
                }
            }
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
