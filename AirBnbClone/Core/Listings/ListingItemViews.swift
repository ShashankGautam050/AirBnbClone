//
//  ListingItemViews.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ListingItemViews: View {
    
    var lists = [
        "house1","house2","house4","house3"
    ]
    var body: some View {
        VStack(spacing : 12){
            TabView{
                ForEach(lists,id: \.self){ image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .shadow(radius: 4)
                        }
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .tabViewStyle(.page)
            
            HStack(alignment : .top){
                VStack(alignment : .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 miles away")
                        .foregroundStyle(.secondary)
                    Text("3 - 10 nov")
                        .foregroundStyle(.secondary)
                    HStack(spacing : 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }
                Spacer()
                HStack(spacing : 3){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            .font(.footnote)
        }
        .padding(24)
       
        
        
       
    }
}

#Preview {
    ListingItemViews()
}
