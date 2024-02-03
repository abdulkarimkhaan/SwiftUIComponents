//
//  ThumbView.swift
//  Components
//
//  Created by Abdul Karim Khan on 01/02/2024.
//

import SwiftUI

struct ThumbView: View {
    
    @Binding var thumbTint: Color
    @Binding var thumbImage: String?

    var body: some View {
        ZStack {
            Circle()
                .fill(thumbTint)
            if let thumbImage = thumbImage {
                Image(thumbImage)
                    .resizable()
                    .frame(width: 35.0, height: 35.0)
                    .clipShape(Circle())
            }
        }
    }
}
