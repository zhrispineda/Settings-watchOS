//
//  HeadphoneNotificationsView.swift
//  NanoSettings
//
//  Settings > Sounds & Haptics > Headphone Safety > Headphone Notifications
//

import SwiftUI

struct HeadphoneNotificationsView: View {
    var body: some View {
        List {
            Group {
                Section(content: {}, header: {
                    Text("**About Headphone Notifications**")
                }, footer: {
                    Text("These notifications inform you if you’ve been listening to loud headphone audio for long enough to affect your hearing. In certain regions, these notifications are required due to regulations and safety standards.")
                })
                
                Section(content: {}, header: {
                    Text("**7-Day Limit Notifications**")
                }, footer: {
                    Text("Exposure limits are based on the safe listening guidelines set by the World Health Organization. Audio is measured over a seven-day window and limits are based on a combination of loudness and time. The louder the audio, the less time you can safely listen and the faster you’ll hit the limit.")
                })
                
                Section(content: {}, footer: {
                    Text("Classifying your Bluetooth audio devices in Settings can ensure your headphone audio measurements are accurate.")
                })
                
                Section(content: {}, footer: {
                    Text("You can learn more about headphone audio exposure and volume limits in the Health app on iPhone that set up this Apple Watch.")
                })
            }
            .foregroundStyle(.primary)
        }
        .navigationTitle("7-Day Limit Notifications")
    }
}

#Preview {
    HeadphoneNotificationsView()
}
