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
            VStack {
                if let temp = viewModel.model?.current.temperature {
                    Text("\(temp, specifier: "%.2f")")
                }
            }
            .onAppear{
                let params: [String : Any] = [
                    Params.latitudeKey : location.latitude,
                    Params.longitudeKey : location.longitude,
                    Params.timeZoneKey : Params.timeZoneValue,
                    Params.languageKey: Params.languageValue,
                    Params.unitsKey: Params.unitsValue
                ]
                viewModel.currentLocationApiRequest(params: params)
        }
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
