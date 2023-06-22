//
//  countryModel.swift
//  WeatherApp
//
//  Created by Sai Podishetty on 6/22/23.
//

import Foundation

struct countryModel: Codable {

    let code: Int?

    let result: [countryListModel]?

    

    private enum CodingKeys: String, CodingKey {

        case code

        case result

    }

}

struct countryListModel: Codable {

    let code: String

    let name: String

    let region: String

    

    private enum CodingKeys: String, CodingKey {

        case code

        case name

        case region

    }

}
