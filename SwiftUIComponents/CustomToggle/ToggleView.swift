//
//  ToggleView.swift
//  Components
//
//  Created by Abdul Karim Khan on 01/02/2024.
//

import SwiftUI

struct ToggleView: View {
    
    @Binding var toggleEnabled: Bool

    @State var enabledBackgroundTint: Color
    @State var disabledBackgroundTint: Color
    @State var enabledBackgroundImage: String?
    @State var disabledBackgroundImage: String?
    
    @State var enabledThumbTint: Color
    @State var disabledThumbTint: Color
    @State var enabledThumbImage: String?
    @State var disabledThumbImage: String?

    var body: some View {
        ZStack {
            
            Capsule(style: .circular)
                .fill(toggleEnabled ? enabledBackgroundTint : disabledBackgroundTint)
            if let disabledBackgroundImage = disabledBackgroundImage, let enabledBackgroundImage = enabledBackgroundImage {
                Image(toggleEnabled ? enabledBackgroundImage : disabledBackgroundImage)
                    .resizable()
                    .clipShape(Capsule(style: .circular))
                    .animation(.easeInOut(duration: 0.5), value: toggleEnabled)
            }
            
            HStack {
                Spacer()
                ThumbView(thumbTint: toggleEnabled ? $enabledThumbTint : $disabledThumbTint, thumbImage: toggleEnabled ? $enabledThumbImage : $disabledThumbImage)
                    .offset(x: toggleEnabled ? 0 : -30)
                    .animation(.easeInOut(duration: 0.5), value: toggleEnabled)
                    .shadow(radius: 10)
                    .zIndex(1.0)
            }
        }
        .frame(width: 64.0, height: 35.0)
        .onTapGesture {
            toggleEnabled.toggle()
        }
    }
}
