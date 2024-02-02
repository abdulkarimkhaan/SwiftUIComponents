
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



# SwiftUIComponents
## Get SwiftUI Custom Reusable Components in this repository

### 1. Custom Toggle View

Customise your toggle by passing different values in argument. Add your own custom image for background or thumb in toggle using single codebase.

### Code
```
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
                    enabledBackgroundTint: .purple,
                    disabledBackgroundTint: .white,
                    enabledBackgroundImage: "ic-day",
                    disabledBackgroundImage: "ic-night",
                    enabledThumbTint: .yellow,
                    disabledThumbTint: .gray/*,
                    enabledThumbImage: "ic-night",
                    disabledThumbImage: "ic-day",*/
                )
                Text("Toggle State: \(onToggle.description)")
                    .foregroundStyle(.white)
                    .bold()
            }
        }
    }
```

### Screenshots

With Background Thumb Image
![Simulator Screenshot - iPhone 15 Pro - 2024-02-03 at 04 13 43](https://github.com/abdulkarimkhaan/SwiftUIComponents/assets/49764851/a6a1f4ef-2246-4343-a15a-1dd6dcd82852)
![Simulator Screenshot - iPhone 15 Pro - 2024-02-03 at 04 13 39](https://github.com/abdulkarimkhaan/SwiftUIComponents/assets/49764851/9bb6717d-447b-4d5f-87de-65aac600891d)


With Background Thumb Color
![Simulator Screenshot - iPhone 15 Pro - 2024-02-03 at 04 14 24](https://github.com/abdulkarimkhaan/SwiftUIComponents/assets/49764851/aeef0647-6130-495f-b93f-c11f95acb80b)
![Simulator Screenshot - iPhone 15 Pro - 2024-02-03 at 04 14 22](https://github.com/abdulkarimkhaan/SwiftUIComponents/assets/49764851/2963a62b-0ce2-4e2f-b7e9-ae8a5d426098)



[contributors-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/graphs/contributors
[forks-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/network/members
[stars-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/stargazers
[linkedin-url]: https://www.linkedin.com/in/abdulkarimkhan/
[issues-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/issues
[license-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/blob/master/LICENSE.txt
