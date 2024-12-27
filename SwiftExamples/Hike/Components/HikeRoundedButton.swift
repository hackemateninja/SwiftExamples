//
//  HikeRoundedButton.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeRoundedButton: View {
    let image: String
    
    var body: some View {
        ZStack{
            
            // MARK: - BACKGROUND BUTTON
            Circle()
                .fill(
                    LinearGradient(
                        colors: [.white, .customGreenLight, .customGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
            
            // MARK: - STROKE BUTTON
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom),
                    lineWidth: 4)
            
            // MARK: - ICON BUTTON
            Image(systemName: image)
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGrayLight, .customGrayMedium],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    HikeRoundedButton(image: "figure.hiking")
}
