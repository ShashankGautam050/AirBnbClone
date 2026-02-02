//
//  DetailViewMainInfo.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct DetailViewMainInfo: View {
    var body: some View {
        HStack{
            
       
        VStack(alignment : .leading){
           
                Text("Miami, Villa")
                .font(.title2)
                
            HStack {
                RatingView(rating: 2.443)
                Text("-")
                Text("Reviews (234)")
            }
           
            Text("Miami, Florida")
                .font(.subheadline)
            
        }
        .font(.subheadline)
        .padding()
            Spacer()
        }
    }
}

#Preview {
    DetailViewMainInfo()
}
