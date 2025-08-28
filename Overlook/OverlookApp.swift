//
//  OverlookApp.swift
//  Overlook
//
//  Created by Rajan Panchal on 2025-08-28.
//

import SwiftUI

@main
struct OverlookApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}
