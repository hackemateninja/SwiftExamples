//
//  LinkDemo.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 24/12/24.
//

import SwiftUI

struct LinkDemo: View {
    var body: some View {
        VStack{
            Link("Go to apple", destination: URL(string: "https://apple.com")!)
                .buttonStyle(.borderless)
            
            Link("Call To action", destination: URL(string: "tel:57059513")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.regular)
            
            Link("Send an Email", destination: URL(string: "mailto:hackemate.ninja@gmail.com")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .tint(.pink)
            
            Link("Credo academy", destination: URL(string: "https://credo.academy")!)
                .buttonStyle(.plain)
                .padding()
                .border(.primary, width: 2)
            
            Link(destination: URL(string: "https://apple.com")!){
                HStack(spacing: 16){
                    Image(systemName: "apple.logo")
                    Text("Apple store")
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(
                    Capsule()
                        .fill(Color.blue)
                )
            }
        }
    }
}

#Preview {
    LinkDemo()
}
