//
//  OwnerProfileInfo.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct OwnerProfileInfo: View {
    var body: some View {
        HStack {
            VStack(alignment : .leading){
                Text("Entire Villa hosted by John Smith")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 250,alignment: .leading)
                HStack(spacing : 3){
                    Text("4 Guests")
                    Text("-")
                    Text("4 Bedroom")
                    Text("-")
                    Text("4 Beds")
                    Text("-")
                    Text("4 Baths")
                    Spacer()
                    
                  
                }
                .font(.caption)
                .fontWeight(.semibold)
               
               
            }
            
            Image("person")
                .resizable()
                .frame(width: 64, height: 64)
                .scaledToFill()
                .clipShape(Circle())
                
        }
        .padding(.horizontal)
    }
}

#Preview {
    OwnerProfileInfo()
}
