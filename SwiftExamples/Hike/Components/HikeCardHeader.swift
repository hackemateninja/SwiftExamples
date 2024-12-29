//
//  HikeCardHeader.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeCardHeader: View {
    let title: String
    let description: String
    let buttonImage: String
    @Binding var isSheetPresented: Bool
    let action: () -> Void
    let sheetContent: () -> AnyView
    

    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Group{
                    Text(title)
                        .fontWeight(.black)
                        .font(.system(size: 52))
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    Color.customGrayLight,
                                    Color.customGrayMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                    
                    Spacer()
                    
                    Button{
                        action()
                    }label: {
                        HikeRoundedButton(image: buttonImage)
                    }
                    .sheet(isPresented: $isSheetPresented){
                        sheetContent()
                            .presentationDragIndicator(.visible)
                            .presentationDetents([.medium, .large])
                    }
                }
            }
            
            Text(description)
                .multilineTextAlignment(.leading)
                .italic()
                .foregroundColor(.customGrayMedium)
            
        }
        .padding(.horizontal, 30)
    }
    
}

struct HikeHeader_Previews: PreviewProvider {
    @State static private var isSheetPresented = false
    
    static var previews: some View {
        HikeCardHeader(
            title: "Hiking",
            description: "Fun and enjoyable outdoor activity for friends and families.",
            buttonImage: "figure.hiking",
            isSheetPresented: $isSheetPresented,
            action: {print("hello world")}
        ){
            AnyView(
                Text("Sheet Content")
                    .font(.title)
                    .padding()
            )
        }
        .previewLayout(.sizeThatFits) // Ajusta el tamaño del preview
        .padding() // Agrega padding para visualización
    }
}
