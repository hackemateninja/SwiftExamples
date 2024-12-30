//
//  HikeCustomListRow.swift
//  SwiftExamples
//
//  Created by Herman Orlando Morales Lòpez on 29/12/24.
//

import SwiftUI

struct HikeCustomListRow: View {
    
    let rowLabel: String
    let rowIcon: String
    let rowContent: String
    let rowTintColor: Color
    let rowLinkDestination: String?
    
    init(rowLabel: String, rowIcon: String, rowContent: String, rowTintColor: Color, rowLinkDestination: String? = nil) {
        self.rowLabel = rowLabel
        self.rowIcon = rowIcon
        self.rowContent = rowContent
        self.rowTintColor = rowTintColor
        self.rowLinkDestination = rowLinkDestination
    }
    
    
    var body: some View {
        LabeledContent{
            if let link = rowLinkDestination, let url = URL(string: link) {
                            Link(rowContent, destination: url)
                                .foregroundColor(.pink)
                                .fontWeight(.heavy)
            } else {
                Text(rowContent)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        HikeCustomListRow(
            rowLabel: "Application",
            rowIcon: "apps.iphone",
            rowContent: "Hike",
            rowTintColor: .blue)
        HikeCustomListRow(
            rowLabel: "Compatibility",
            rowIcon: "info.circle",
            rowContent: "iOS, iPadOS",
            rowTintColor: .red)
        HikeCustomListRow(
            rowLabel: "Technology",
            rowIcon: "swift",
            rowContent: "Swift",
            rowTintColor: .orange)
        HikeCustomListRow(
            rowLabel: "Version",
            rowIcon: "gear",
            rowContent: "1.0",
            rowTintColor: .purple)
        HikeCustomListRow(
            rowLabel: "Developer",
            rowIcon: "ellipsis.curlybraces",
            rowContent: "Herman Morales",
            rowTintColor: .mint)
        HikeCustomListRow(
            rowLabel: "Designer",
            rowIcon: "paintpalette",
            rowContent: "John Doe",
            rowTintColor: .pink)
        HikeCustomListRow(
            rowLabel: "Website",
            rowIcon: "globe",
            rowContent: "ronindev",
            rowTintColor: .indigo,
            rowLinkDestination: "http://ronindev.ninja")
    }
    
}
