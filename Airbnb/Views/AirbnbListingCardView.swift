//
//  AirbnbListingCardView.swift
//  Airbnb
//
//  Created by Seattle on 2024/2/12.
//

import SwiftUI

struct AirbnbListingCardView: View {
    let model: AirbnbListing
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: model.thumbnail_url ?? ""))
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
            
            VStack {
                Text(model.name ?? "Listing")
                    .font(.title3)
                    .bold()
                Text(model.description ?? "Listing")
                    .lineLimit(3)
                    .foregroundColor(Color(.secondaryLabel))
                    .font(.body)
            }
        }
    }
}
