//
//  RatingView.swift
//  AirBnbClone
//
//  Created by Shashank Gautam on 02/02/26.
//

import SwiftUI

struct RatingView: View {
    var rating : Double
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
            Text(rating,format: .number.precision(.fractionLength(2)))
        }
    }
}

#Preview {
    RatingView(rating: 3.45)
}
