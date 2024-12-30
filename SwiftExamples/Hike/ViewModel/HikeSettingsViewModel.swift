//
//  HikeSettingsViewModel.swift
//  SwiftExamples
//
//  Created by Herman Orlando Morales Lòpez on 29/12/24.
//

import Foundation
import SwiftUI



class HikeSettingsViewModel: ObservableObject{
    
    // MARK: - PROPERTIES
    @Published var alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    @Published var hikeSettingsDescData: [HikeSettingsModel] = [
        HikeSettingsModel(
            rowLabel: "Application",
            rowIcon: "apps.iphone",
            rowContent: "Hike",
            rowTintColor: .blue,
            rowLinkDestination: nil
        ),
        HikeSettingsModel(
            rowLabel: "Compatibility",
            rowIcon: "info.circle",
            rowContent: "iOS, iPadOS",
            rowTintColor: .red,
            rowLinkDestination: nil
        ),
        HikeSettingsModel(
            rowLabel: "Technology",
            rowIcon: "swift",
            rowContent: "Swift",
            rowTintColor: .orange,
            rowLinkDestination: nil
        ),
        HikeSettingsModel(
            rowLabel: "Version",
            rowIcon: "gear",
            rowContent: "1.0",
            rowTintColor: .purple,
            rowLinkDestination: nil
        ),
        HikeSettingsModel(
            rowLabel: "Developer",
            rowIcon: "ellipsis.curlybraces",
            rowContent: "Herman Morales",
            rowTintColor: .mint,
            rowLinkDestination: nil
        ),
        HikeSettingsModel(
            rowLabel: "Designer",
            rowIcon: "paintpalette",
            rowContent: "John Doe",
            rowTintColor: .pink,
            rowLinkDestination: nil
        ),
        HikeSettingsModel(
            rowLabel: "Website",
            rowIcon: "globe",
            rowContent: "ronindev",
            rowTintColor: .indigo,
            rowLinkDestination: "http://ronindev.ninja"
        )
    ]

    
    // MARK: - FUCTION
    func changeIcon(item: Int){
        UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) {error in
            if error != nil {
                print("\(String(describing: error?.localizedDescription))")
            }
        
        }
    }
}
