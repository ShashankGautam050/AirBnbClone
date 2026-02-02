//
//  ListingImageCarsoulViewer.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ListingImageCarsoulViewer: View {
    var images: [String]
    let height : CGFloat
    let cornerRadius: CGFloat
    var body: some View {
        TabView{
            ForEach(images,id: \.self){ image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .background {
                        RoundedRectangle(cornerRadius: 12)
                            .shadow(radius: 4)
                    }
            }
        }
        .frame(height: height)
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarsoulViewer(images: ExploreItemModel.imageList,height: 320,cornerRadius: 12)
}
