//
//  AirbnbListingsResponse.swift
//  Airbnb
//
//  Created by Seattle on 2024/2/12.
//

import Foundation

struct AirbnbListingsResponse: Codable {
    let total_count: Int
    let results: [AirbnbListing]
}
