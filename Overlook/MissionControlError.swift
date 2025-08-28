//
//  MissionControlError.swift
//  SwitchDestop
//
//  Created by Rajan Panchal on 2025-08-28.
//

import SwiftUI

enum MissionControlError: LocalizedError {
    case applicationNotFound
    
    var errorDescription: String? {
        switch self {
        case .applicationNotFound:
            return "Mission Control application not found"
        }
    }
}
