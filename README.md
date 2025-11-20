# Settings-watchOS
A **work-in-progress** SwiftUI recreation of the watchOS Settings app.

> [!NOTE]  
> This project is focused on the latest public releases of watchOS and Xcode. Use an older branch to use older versions.

## Information
- Recreation of Apple's Settings app for watchOS 26.1 (23S37).
- All features within the app are only simulations and have no effect on the device outside of the app.
- This is based off of the Simulator and not a physical Apple Watch for now.
- Previous versions are available as their own branches, going as far back as 10.5. Less features are available in earlier versions.

> [!CAUTION]
> Some of the code in this project may rely on private APIs. It is strictly for demonstration purposes only.
>
> **Do not reuse any code from this project that relies on private methods.** Consider publicly supported alternatives instead.

## Preview
Apple's Settings app is opened first, followed up by this project's app:

![A GIF displaying Apple's Settings app first, followed by this project's Settings app.](Assets/Settings.gif)

## Usage
Open in Xcode and run with either a watchOS Simulator or a physical Apple Watch with Developer Mode enabled as a destination.

> [!IMPORTANT]  
> You may need to change the bundle identifier of the app to be able to sign it with Xcode for use on a physical device.

## Disclaimers
- All assets including icons, images, localization strings, and other resources are not my own in any way.
- This app is a personal and educational recreation of Apple's apps and designs, made in appreciation of the teams that built and maintain them.
- Feel free to look through the commit history to see the project evolve from a single view to its current state.
- If you have any questions or feedback, please contact me through the options listed on my profile.

## Other Settings Projects
- **iOS Settings** https://github.com/zhrispineda/Settings-iOS
- **tvOS Settings** https://github.com/zhrispineda/Settings-tvOS
- **visionOS Settings** https://github.com/zhrispineda/Settings-visionOS
- **macOS System Settings** https://github.com/zhrispineda/System-Settings
