//
//  HikeCardView.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeCardView: View {

    // MARK: - PROPERTIES
    @ObservedObject var viewModel = HikeCardViewModel()

    var body: some View {
        ZStack {
            HikeBackground()
            
            // MARK: - HEADER
            VStack {
                HikeCardHeader(
                    title: viewModel.hikeCardData.title,
                    description: viewModel.hikeCardData.description,
                    buttonImage: "figure.hiking",
                    isSheetPresented: $viewModel.isSheetPresented,
                    action: { viewModel.toggleSheet()}
                ){
                    HikeSettingsView()
               }
                
                // MARK: - MAIN CONTENT
                ZStack{
                    Group{
                        HikeCircle()
                        HikeImage(imageNumber: viewModel.imageNumber)
                    }

                }
                
                // MARK: - FOOTER
                HikeGradientButton(title: viewModel.hikeCardData.buttonTitle){
                    viewModel.randomImage()
                }
           
                
            } //: ZSTACK
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    HikeCardView()
}
