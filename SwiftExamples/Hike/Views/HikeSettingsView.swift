//
//  HikeSettingsVieew.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeSettingsView: View {
    
    @ObservedObject var viewModel = HikeSettingsViewModel()
    
    
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
            HikeSettingsHeader(
                title: "Hike",
                leyend: "Editors' Choice",
                subTitle: "Where can you find \nperfect tracks?",
                description: "The hike which looks gorgeous in photos but is event better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.",
                suggestion: "Dust off the boots! It's time for a walk."
            )
            
            // MARK: - SECTION: ICONS
            HikeSectionChangeIcon(
                title: "Alternate Icons",
                description: "Choose your favorite app icon from the collection above",
                alternateAppIcons: viewModel.alternateAppIcons,
                onChangeIcon: { selectedIndex in
                    viewModel.changeIcon(item: selectedIndex) // Aquí pasamos el índice al ViewModel
                                }
            )
            
            // MARK: - SECTION: ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ){
                ForEach(viewModel.hikeSettingsDescData) { item in
                    HikeCustomListRow(
                        rowLabel: item.rowLabel,
                        rowIcon: item.rowIcon,
                        rowContent: item.rowContent,
                        rowTintColor: item.rowTintColor,
                        rowLinkDestination: item.rowLinkDestination)
                }
            }//: SECTION
        }// LIST
    }
}
#Preview {
    HikeSettingsView()
}
