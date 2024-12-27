//
//  HikeCardViewModel.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import Foundation


class HikeCardViewModel: ObservableObject{
    
    // MARK: - PROPERTIES
    @Published var randomNumber: Int = 0
    @Published var imageNumber: Int = 1
    @Published var isSheetPresented =  false
    @Published var title: String =  "Hike"
    @Published var description: String = "Fun and enjoyable outdoor activity for friends and families."
    @Published var buttonTitle: String = "Explore more"
    
    // MARK: - FUCTION
    func randomImage(){
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
                
        imageNumber = randomNumber
    }
    
    func toggleSheet(){
        isSheetPresented.toggle()
    }
}
