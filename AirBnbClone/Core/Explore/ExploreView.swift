//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            SearchAndFilterBar()
                .padding(.bottom)
            ScrollView {
                LazyVStack(spacing : 32){
                    ForEach(1 ... 10,id: \.self){ listing in
                       ListingItemViews()
                            .frame(height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        
                    }
                }
               
            }
        }
    }
}

#Preview {
    ExploreView()
}
