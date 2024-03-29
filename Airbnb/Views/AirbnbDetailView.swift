//
//  AirbnbDetailView.swift
//  Airbnb
//
//  Created by Seattle on 2024/2/12.
//

import SwiftUI

struct AirbnbDetailView: View {
    let model: AirbnbListing
    
    var body: some View {
        VStack(alignment: .leading) {
            GeometryReader { proxy in
                ScrollView(.vertical) {
                    // picture
                    AsyncImage(url: URL(string: model.xl_picture_url ?? ""))
                        .frame(width: proxy.frame(in: .global).width, height: proxy.frame(in: .global).width)
                        //.aspectRatio(contentMode: .fit)
                        .clipped()
                    // info
                    Text(model.name ?? "")
                        .bold()
                        .padding()
                    
                    if let price = model.price {
                        Text("Nightly Rate: \(price.formatted(.currency(code: "USD")))")
                    }
                    
                    Text("Description: \(model.description ?? "")")
                        .padding()
                    Text("Summary: \(model.summary ?? "")")
                        .padding()
                    Text("House Rules: \(model.house_rules ?? "")")
                        .padding()
                    Text("Space: \(model.space ?? "")")
                        .padding()
                    // host info
                    Text("About Your Host")
                        .font(.title2)
                        .bold()
                    HStack {
                        AsyncImage(url: URL(string: model.host_thumbnail_url))
                            .frame(width: 75, height: 75)
                            .aspectRatio(contentMode: .fill)
                            .clipShape(Circle())
                        Text(model.host_name)
                            .bold()
                    }
                    .padding()
                    
                    Text("Hosting since: " + model.host_since)
                }
                .frame(maxWidth: proxy.frame(in: .global).width)
            }
        }
        .navigationTitle(model.name ?? "Listing")
    }
}

//struct AirbnbDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        AirbnbDetailView()
//    }
//}
