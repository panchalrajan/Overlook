//
//  AppDelegate.swift
//  SwitchDestop
//
//  Created by Rajan Panchal on 2025-08-28.
//

import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {
    var statusItem: NSStatusItem?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        setupStatusItem()
    }
    
    private func setupStatusItem() {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        if let button = statusItem?.button {
            button.image = NSImage(systemSymbolName: "rectangle.3.group", accessibilityDescription: "SpaceSwitch")
            button.target = self
            button.action = #selector(statusItemClicked)
        }
    }
    
    @objc private func statusItemClicked() {
        MissionControlService.shared.activate()
    }
}
