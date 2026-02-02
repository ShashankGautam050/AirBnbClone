//
//  ListingFeature.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ListingFeature: View {
    var body: some View {
        HStack {
            Image(systemName: "medal")
            VStack(alignment : .leading){
                Text("SuperHost")
                    .font(.headline)
                Text("This house has best feature in the town,please check it out!")
                    .foregroundStyle(Color(.secondaryLabel))
                    .font(.subheadline)
            }
        }
       
    }
}

#Preview {
    ListingFeature()
}
