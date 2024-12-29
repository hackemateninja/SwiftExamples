//
//  HikeCircle.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI


struct HikeCircle: View {
    @State private var isAnimateGradient: Bool = false
    
    // MARK: - PROPERTIES
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimated = false
    
    // MARK: - FUNCTIONS
    
    // 1. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // 2. RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 4...80)
    }
    
    // 3. RANDOM SCALE
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    // 4. RANDOM SPEED
    func randomSpeed() -> Double{
        return Double.random(in: 0.05...1.0)
    }
    
    // 5. RANDOM DELAY
    func randomDelay() -> Double{
        return Double.random(in: 0...2)
    }
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.customIndigoMedium,
                            Color.customSalmonLight],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateGradient.toggle()
                    }
                }
            ZStack{
                Group{
                    ForEach(0...randomCircle, id: \.self) { item in
                        Circle()
                            .foregroundColor(.white)
                            .opacity(0.25)
                            .frame(width: randomSize())
                            .position(
                                x: randomCoordinate(),
                                y: randomCoordinate()
                            )
                            .scaleEffect(isAnimated ? randomScale() : 1)
                            .onAppear(perform: {
                                withAnimation(
                                    .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                                    .repeatForever()
                                    .speed(randomSpeed())
                                    .delay(randomDelay())
                                ){
                                    isAnimated = true
                                }
                            })
                    }
                }
            }
            .frame(width: 256, height: 256)
            .mask(Circle())
            .drawingGroup()
                
        }
        .frame(width: 256, height: 256)
    }
}
#Preview {
    HikeCircle()
}
