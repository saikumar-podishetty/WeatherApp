//
//  MainView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/19/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel: CurrentLocationViewModel
    
    var body: some View {
        Text("Hello, World!")
            .onAppear{
                viewModel.currentLocationApiRequest()
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(viewModel: CurrentLocationViewModel())
    }
}
