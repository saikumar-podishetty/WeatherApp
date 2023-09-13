//
//  MainView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import SwiftUI
import CoreLocation

struct MainView: View {
    @StateObject var viewModel = CurrentLocationVM()
    @State var location = CLLocationCoordinate2D()
    
    
    var body: some View {
        ZStack {
            Color.offWhite
            VStack {
                HStack {
                    Button(action: {
                        print("Search button pressed")
                    }) {
                        Image(systemName: "line.3.horizontal.decrease")
                            .foregroundColor(.black)
                    }
                    .buttonStyle(NeumorphicButtonStyle(shapes: .constant(.circle), width: .constant(44), height: .constant(44)))
                    .padding(.init(top: 44, leading: 0, bottom: 0, trailing: 0))
                    Spacer()
                    Button(action: {
                        print("Search button pressed")
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                    }
                    .buttonStyle(NeumorphicButtonStyle(shapes: .constant(.circle), width: .constant(44), height: .constant(44)))
                    .padding(.init(top: 44, leading: 0, bottom: 0, trailing: 0))
                    
                }
                HStack {
                    if let temp = viewModel.model?.current.temp_f {
                        Text("\(temp, specifier: "%.2f")")
                            .padding(.init(top: 44, leading: 0, bottom: 0, trailing: 0))
                            .font(.system(size: 24))
                    }
                    Spacer()
                }
                
                Spacer()
                
            }
            
          
        }
            .onAppear{
                let coordinates = [location.latitude, location.longitude]
                let params: [String : Any] = [
//                    Params.latitudeKey : location.latitude,
//                    Params.longitudeKey : location.longitude,
//                    Params.timeZoneKey : Params.timeZoneValue,
//                    Params.languageKey: Params.languageValue,
                    
                    Params.key : Service.headerKey,
                    Params.q : coordinates,
                    Params.aqi : Params.aqiValue
                ]
                viewModel.currentLocationApiRequest(params: params)
        }
            .edgesIgnoringSafeArea(.all)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
