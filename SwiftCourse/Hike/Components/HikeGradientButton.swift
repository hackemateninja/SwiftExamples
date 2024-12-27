//
//  HikeGradientButton.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeGradientButton: View {
    
    // MARK: - PROPERTIES
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
        }
        .buttonStyle(HikeGradientButtonStyle())
    }
}

#Preview {
    HikeGradientButton(title: "Explore more"){
        print("Hello button")
    }
}
