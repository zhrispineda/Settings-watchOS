#  Settings-watchOS
SwiftUI recreation of the watchOS Settings app.

**IMPORTANT:** This project is being worked on using **Xcode 16 beta** and **Swift 6.0**. To use this project on Xcode 15, change the version of Swift to 5.0:

(Top of project sidebar) `Preferences` > `TARGETS` > `Preferences` > `Build Settings` > (Scroll to bottom) `Swift Compiler - Language` > `Swift Language Version` > Change the value `Swift 6` to `Swift 5`

## Examples
Apple's Settings app is shown first, and then this project's app is shown in the GIF below.

![A GIF comparing Apple's Settings app and this project's Settings app side-by-side](Assets/Settings.gif)

## Information
- This personal project is a recreation of Apple's current and default Settings app for Apple Watch **(Simulator.app)** on watchOS 11 **beta 7** (22R5348a).
- All features within the app are only simulations and have no effect on the device outside of the app.
- Most views are complete, but lack features such as saving/retrieving data, for now.
- This is based off of the Simulator and not a physical Apple Watch for now; aspects such as simulated controls and views for radios are unavailable at this time.

## Usage
Open the project in Xcode and run with either a Simulator running Apple Watch's watchOS or a physical Apple Watch with Developer Mode enabled as a destination.

As this is a personal project for learning Swift and SwiftUI, feel free to fork, explore, and make the project your own for any personal purpose!

## Disclaimers
- This app is a recreation of one of Apple's own apps and its designs.
- All assets such as icons and images are not my own in any way.
- Feel free to look through the commit history to see the project evolve from a single view to its current state.

## Other Settings Projects
- **iOS Settings** https://github.com/zhrispineda/Settings-iOS
- **visionOS Settings** https://github.com/zhrispineda/Settings-visionOS
