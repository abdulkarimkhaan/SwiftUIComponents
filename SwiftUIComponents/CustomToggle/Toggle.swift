//
//  Toggle.swift
//  Components
//
//  Created by Abdul Karim Khan on 28/01/2024.
//

import SwiftUI

struct Toggle: View {
    
    @State var onToggle: Bool = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack (spacing: 20) {
                /// - Parameters:
                ///   - toggleEnabled: toggleEnabled is binded and returned which can be seen in Text("Toggle State: \(onToggle.description)").
                ///   - enabledBackgroundTint: To update background toggle color when toggle is enabled, we have to pass no image against "enabledBackgroundImage" and set any color here..
                ///   - disabledBackgroundTint: To update background toggle color when toggle is disabled, we have to pass no image against "disabledBackgroundImage" and set any color here..
                ///   - enabledBackgroundImage: To update background toggle image when toggle is enabled, we have to pass any image against this. This will override your color. If you want to show color, you must NOT pass this parameter.
                ///   - disabledBackgroundImage: To update background toggle image when toggle is disabled, we have to pass any image against this. This will override your color. If you want to show color, you must NOT pass this parameter.
                ///   - enabledThumbTint: To update thumb color when toggle is enabled, we have to pass no image against "enabledThumbImage" and set any color here.
                ///   - disabledThumbTint: To update thumb color when toggle is disabled, we have to pass no image against "disabledThumbImage" and set any color here.
                ///   - enabledThumbImage: To update thumb image when toggle is enabled, we have to pass any image against this. This will override your color. If you want to show color, you must NOT pass this parameter.
                ///   - disabledThumbImage: To update thumb image when toggle is disabled, we have to pass any image against this. This will override your color. If you want to show color, you must NOT pass this parameter.
                ToggleView(
                    toggleEnabled: $onToggle,
                    enabledBackgroundTint: .yellow,
                    disabledBackgroundTint: .gray,
                    /*enabledBackgroundImage: "ic-day",
                    disabledBackgroundImage: "ic-night",*/
                    enabledThumbTint: .yellow,
                    disabledThumbTint: .gray,
                    enabledThumbImage: "ic-day",
                    disabledThumbImage: "ic-night"
                )
                Text("Toggle State: \(onToggle.description)")
                    .foregroundStyle(.white)
                    .bold()
            }
        }
    }
}


#Preview {
    Toggle()
}
