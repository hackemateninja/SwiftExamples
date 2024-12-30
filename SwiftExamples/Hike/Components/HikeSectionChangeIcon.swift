//
//  HikeSectionChangeIcon.swift
//  SwiftExamples
//
//  Created by Herman Orlando Morales Lòpez on 29/12/24.
//

import SwiftUI

struct HikeSectionChangeIcon: View {
    
    let title: String
    let description: String
    let alternateAppIcons: [String]
    let onChangeIcon: (Int) -> Void
    
    var body: some View {
        Section(header: Text("Alternate Icons")){
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 12) {
                    ForEach(alternateAppIcons.indices, id: \.self) { item in
                        Button{
                            onChangeIcon(item)
                        } label: {
                            Image("\(alternateAppIcons[item])-Preview")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(16)
                        }
                        .buttonStyle(.borderless)
                    }
                }
            } //: SCROLL VIEW
            .padding(.top, 12)

            
            Text("Choose your favourite app icon from the collection above.")
                .frame(minWidth: 0, maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .font(.footnote)
        } //: SECTION
        .padding(.bottom, 12)
        .listRowSeparator(.hidden)
    }
}

#Preview {
    HikeSectionChangeIcon(
        title: "Alternate Icons",
        description: "Choose your favorite app icon from the collection above",
        alternateAppIcons: ["AppIcon-MagnifyingGlass",
                            "AppIcon-Map",
                            "AppIcon-Mushroom",
                            "AppIcon-Camera",
                            "AppIcon-Backpack",
                            "AppIcon-Campfire"],
        onChangeIcon: { index in
            print("Selected icon index: \(index)")
        }
    )
    .padding()
}
