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
            Text("Hello, World!")
        }
        .onAppear{
                let params: [String : Any] = [
                    "lat" : location.latitude,
                    "lon": location.longitude,
                    "timezone": "auto",
                    "language": "en",
                    "units": "auto"
                ]
                viewModel.currentLocationApiRequest(params: params)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
