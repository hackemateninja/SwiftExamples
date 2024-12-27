//
//  HikeImage.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeImage: View {
    let imageNumber: Int
    var body: some View {
        Image("image-hike-\(imageNumber)")
            .resizable()
            .scaledToFit()
            .animation(.default, value: imageNumber)
    }
}

#Preview {
    List{
        HikeImage(imageNumber: 1)
        HikeImage(imageNumber: 2)
        HikeImage(imageNumber: 3)
        HikeImage(imageNumber: 4)
        HikeImage(imageNumber: 5)
    }
}
