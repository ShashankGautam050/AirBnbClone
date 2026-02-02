//
//  ListingItemViews.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ListingItemViews: View {
    
    var item : ExploreItemModel
    var body: some View {
      
            VStack(spacing : 12){
                ListingImageCarsoulViewer(images: item.houseImage,height: 250,cornerRadius: 12)
                HStack(alignment : .top){
                    VStack(alignment : .leading){
                        Text(item.houseName)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("\(item.houseDistance) miles away")
                            .foregroundStyle(.secondary)
                        Text("3 - 10 nov")
                            .foregroundStyle(.secondary)
                        HStack(spacing : 4){
                            Text("$\(item.housePrice)")
                                .fontWeight(.semibold)
                            Text("night")
                        }
                    }
                    Spacer()
                    RatingView(rating: item.houseRating)
                }
                .font(.footnote)
            }
            .padding()
            .listRowSeparator(Visibility.hidden)
        
       
        
        
       
    }
}

#Preview {
    ListingItemViews(item: ExploreItemModel.lists.first!)
}
