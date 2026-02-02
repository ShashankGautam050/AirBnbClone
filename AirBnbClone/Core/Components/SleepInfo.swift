//
//  SleepInfo.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct SleepInfo: View {
    var body: some View {
        VStack(alignment : .leading,spacing: 16){
            Text("Where you'll sleep")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(1..<5){ sleep in
                        VStack(alignment: .leading,spacing: 4){
                            Image(systemName: "bed.double.fill")
                            Text("bedroom \(sleep)")
                        }
                        .padding(.vertical,32)
                        .padding(.horizontal,24)
                        .background {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.gray,lineWidth: 2)
                                .fill(Color(.systemBackground))
                                .shadow(radius: 3)
                                
                        }
                        .padding(.vertical,8)
                        .padding(.horizontal,8)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    SleepInfo()
}
