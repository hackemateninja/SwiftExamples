//
//  HikeGradientButtonStyle.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeGradientButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statement with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: when user pressed the button
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                        
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                // B: When the Button is not pressed
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
