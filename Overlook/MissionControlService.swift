//
//  MissionControlService.swift
//  SwitchDestop
//
//  Created by Rajan Panchal on 2025-08-28.
//

import SwiftUI
import OSLog

final class MissionControlService {
    static let shared = MissionControlService()
    
    private let logger = Logger(subsystem: "com.swiftninjadev.SwitchDestop", category: "MissionControl")
    private let bundleID = "com.apple.exposelauncher"
    
    private init() {}
    
    func activate() {
        Task {
            do {
                try await openMissionControl()
                logger.info("Mission Control activated successfully")
            } catch {
                logger.error("Failed to activate Mission Control: \(error.localizedDescription)")
            }
        }
    }
    
    private func openMissionControl() async throws {
        guard let appURL = NSWorkspace.shared.urlForApplication(withBundleIdentifier: bundleID) else {
            throw MissionControlError.applicationNotFound
        }
        
        let config = NSWorkspace.OpenConfiguration()
        config.activates = true
        
        try await NSWorkspace.shared.openApplication(at: appURL, configuration: config)
    }
}

