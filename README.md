# Settings-watchOS
A **work-in-progress** SwiftUI recreation of the watchOS Settings app.

> [!NOTE]  
> This project is focused on the latest public releases of watchOS and Xcode. Use an older branch for older versions.

## Information
- Based on watchOS 26.2 (23S303).
- All features within the app are only simulations and have no effect on the device outside of the app.
- Layout is based on Simulator and not a physical Apple Watch (for now).
- Previous versions are available as separate branches, going as far back as 10.5. Fewer features are available in earlier versions.

> [!CAUTION]
> Some of the code in this project may rely on private APIs. It is strictly for demonstration purposes only.
>
> **Do not reuse any code from this project that relies on private methods.** Consider publicly supported alternatives instead.

## Preview
The app for this project opens first, followed by Apple's Settings app:

![Project app is launched first to display layout similarities, then launches Apple's Settings app to compare.](Assets/Settings.gif)

## Usage
Open in Xcode and run with either watchOS Simulator or a physical Apple Watch with Developer Mode enabled as a destination.

> [!IMPORTANT]  
> You may need to change the bundle identifier of the app to be able to sign it with Xcode for use on a physical device.

## Disclaimers
- This app is a personal and educational recreation of Apple's apps and designs, made in appreciation of the teams that built and maintain them.
- All assets including icons, images, localization strings, and other resources are not my own in any way.
- If you have any questions or feedback, please contact me through the options listed on my profile.

## Other Settings Projects
- **macOS System Settings** https://github.com/zhrispineda/System-Settings
- **visionOS Settings** https://github.com/zhrispineda/Settings-visionOS
- **tvOS Settings** https://github.com/zhrispineda/Settings-tvOS
- **iOS Settings** https://github.com/zhrispineda/Settings-iOS
