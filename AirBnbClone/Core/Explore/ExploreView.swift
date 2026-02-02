//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct ExploreView: View {
    @State var navigateToDeatlListing = NavigationPath()
    var lists : [ExploreItemModel] = ExploreItemModel.lists
    var body: some View {
        NavigationStack(path : $navigateToDeatlListing){
            VStack {
                SearchAndFilterBar()
                    .padding(.bottom)
                        List(lists) { item in
                            ListingItemViews(item: item)
                                .frame(height: 350)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .onTapGesture {
                                    navigateToDeatlListing.append(item)
                                }
                        }
                        .listStyle(.plain)
                            
                       
                    
                   
                
            }
            .navigationDestination(for: ExploreItemModel.self) { item in
                ListingDetailView(item: item)
            }
           
        }
    }
}

#Preview {
    ExploreView()
}
