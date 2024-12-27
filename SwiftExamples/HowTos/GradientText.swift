//
//  GradientText.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 24/12/24.
//


import SwiftUI

struct GradientText: View {
    var body: some View {
        Text("IOS")
            .font(.system(size: 180))
            .fontWeight(.black)
            .foregroundStyle(
                LinearGradient(
                    colors: [.pink, .purple, .blue],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
        
        Text("IOS")
            .font(.system(size: 180))
            .fontWeight(.black)
            .foregroundStyle(.teal.gradient)
    }
}

#Preview {
    GradientText()
}
