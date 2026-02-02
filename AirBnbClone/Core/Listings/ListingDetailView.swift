//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ListingDetailView: View {
    var item : ExploreItemModel
    var body: some View {
        ScrollView {
            VStack{
                ListingImageCarsoulViewer(images: item.houseImage,height: 300,cornerRadius: 0)
                DetailViewMainInfo()
                Divider()
                OwnerProfileInfo()
                Divider()
                ForEach(0 ..< 2) { feature in
                    ListingFeature()
                }
                .padding(.horizontal,4)
                .padding(.top,8)
                Divider()
                SleepInfo()
                    .padding(.horizontal)
                Spacer()
            }
        }
        
    }
}

#Preview {
    ListingDetailView(item: ExploreItemModel.lists.first!)
}
