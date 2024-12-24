//
//  RemoteImages.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 24/12/24.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 120)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct RemoteImages: View {
    
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        // first
        // AsyncImage(url: URL(string: imageURL))
        
        //scale
        //AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        
        //modifier
       /*
        AsyncImage(url: URL(string: imageURL)) {image in
            image.imageModifier()
        } placeholder: {
            Image(systemName: "photo.circle.fill").iconModifier()
        }
        .padding(40)
        */
        
        //phase
        /*AsyncImage(url: URL(string: imageURL)) {phase in
            if let image = phase.image {
                image.imageModifier()
            } else if phase.error != nil {
                Image(systemName: "ant.circle.fill").iconModifier()
            }else {
                Image(systemName: "photo.circle.fill").iconModifier()
            }
        }
        .padding(40)*/
        
        // animation
        
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation:
                .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) {phase in
                    switch phase {
                    case .empty:
                        Image(systemName: "photo.circle.fill").iconModifier()
                    case .success(let image):
                        image.imageModifier().transition(.move(edge: .bottom))
                    case .failure(let error):
                        Image(systemName: "ant.circle.fill").iconModifier()
                    @unknown default:
                        ProgressView()
                    }
        }
        .padding(40)
    }
}

#Preview {
    RemoteImages()
}
