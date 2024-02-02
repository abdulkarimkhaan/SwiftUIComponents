
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

### Parameters

```
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
```
                

### Code
```
@State var onToggle: Bool = false

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack (spacing: 20) {
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


With Background Thumb Color


[contributors-shield]: https://img.shields.io/github/contributors/abdulkarimkhaan/SwiftUIComponents.svg?style=for-the-badge
[contributors-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/abdulkarimkhaan/SwiftUIComponents.svg?style=for-the-badge
[forks-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/network/members
[stars-shield]: https://img.shields.io/github/stars/abdulkarimkhaan/SwiftUIComponents.svg?style=for-the-badge
[stars-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/stargazers
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/abdulkarimkhan/
[issues-shield]: https://img.shields.io/github/issues/abdulkarimkhaan/SwiftUIComponents.svg?style=for-the-badge
[issues-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/issues
[license-shield]: https://img.shields.io/github/license/abdulkarimkhaan/SwiftUIComponents.svg?style=for-the-badge
[license-url]: https://github.com/abdulkarimkhaan/SwiftUIComponents/blob/master/LICENSE.txt
