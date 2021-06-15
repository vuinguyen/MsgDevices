//
//  MsgDevicesApp.swift
//  MsgDevicesWatch Extension
//
//  Created by Vui Nguyen on 6/15/21.
//

import SwiftUI

@main
struct MsgDevicesApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
