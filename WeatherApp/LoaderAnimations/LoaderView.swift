//
//  LoaderView.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 7/6/23.
//

import SwiftUI

struct LoaderView: View {
    var body: some View {
        ZStack {
            LoaderFiveLinesChronological()
//                .scaleEffect(3)
//                .frame(maxWidth: .infinity,
//                       maxHeight: .infinity,
//                       alignment: .center)
//                .opacity(0.5)
        }
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView()
    }
}
