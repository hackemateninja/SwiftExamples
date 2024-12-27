//
//  HikeBackground.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeBackground: View {
    var body: some View {
        ZStack {
            // MARK: - 3 DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2 LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 3 SURFACE
            LinearGradient(
                colors: [
                    Color.customGreenLight,
                    Color.customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}
#Preview {
    HikeBackground().padding()
}
