//
//  SearchAndFilterBar.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            
            VStack(alignment : .leading,spacing: 4){
                Text("where to ?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.label))
                Text("Anywhere")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal.decrease.circle.fill")
                    .tint(Color(.label))
            }

        }
        .frame(height: 20)
        .padding()
        .background {
            Capsule()
                .stroke(Color.gray.opacity(0.5),lineWidth: 3)
                .fill(Color(.secondarySystemBackground))
                .shadow(radius: 4)
                
        }
        .padding()
    
        
    }
}

#Preview {
    SearchAndFilterBar()
}
