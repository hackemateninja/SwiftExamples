//
//  HikeSettingsModel.swift
//  SwiftExamples
//
//  Created by Herman Orlando Morales Lòpez on 29/12/24.
//

import Foundation
import SwiftUI

struct HikeSettingsModel: Identifiable {
    let id = UUID()
    let rowLabel: String
    let rowIcon: String
    let rowContent: String
    let rowTintColor: Color
    let rowLinkDestination: String?
}
