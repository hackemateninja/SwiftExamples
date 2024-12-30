//
//  HikeSettingsHeader.swift
//  SwiftExamples
//
//  Created by Herman Orlando Morales Lòpez on 29/12/24.
//

import SwiftUI

struct HikeSettingsHeader: View {
    
    // MARK: - PROPERTIES
    let title: String
    let leyend: String
    let subTitle: String
    let description: String
    let suggestion: String
    
    var body: some View {
        Section{
            HStack(){
                Group{
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text(title)
                            .font(.system(size: 66, weight: .black))
                        
                        Text(leyend)
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }
            }
            .foregroundStyle(
                LinearGradient(
                    colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .padding(.top, 8)
            
            VStack(spacing: 8){
                Group{
                    Text(subTitle)
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text(description)
                        .font(.footnote)
                        .italic()
                    
                    Text(suggestion)
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
            }
            .multilineTextAlignment(.center)
            .padding(.bottom, 16)
            .frame(maxWidth: .infinity)
        } //: HEADER
        .listRowSeparator(.hidden)
    }
}

#Preview {
    HikeSettingsHeader(
        title: "Hike",
        leyend: "Editors' Choice",
        subTitle: "Where can you find \nperfect tracks?",
        description: "The hike which looks gorgeous in photos but is event better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.",
        suggestion: "Dust off the boots! It's time for a walk."
    )
    .padding()
}
