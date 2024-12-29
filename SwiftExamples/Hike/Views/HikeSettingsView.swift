//
//  HikeSettingsVieew.swift
//  SwiftCourse
//
//  Created by Herman Orlando Morales Lòpez on 26/12/24.
//

import SwiftUI

struct HikeSettingsView: View {
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
            Section{
                HStack(){
                    Group{
                        Spacer()
                        
                        Image(systemName: "laurel.leading")
                            .font(.system(size: 80, weight: .black))
                        
                        VStack(spacing: -10) {
                            Text("Hike")
                                .font(.system(size: 66, weight: .black))
                            
                            Text("Editors' Choice")
                                .fontWeight(.medium)
                        }
                        
                        Image(systemName: "laurel.trailing")
                            .font(.system(size: 80, weight: .black))
                        
                        Spacer()
                    }
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [.customGreenLight, .customGreenMedium, .customGreenDark],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8){
                    Group{
                        Text("Where can you find \nperfect tracks?")
                            .font(.title2)
                            .fontWeight(.heavy)
                        
                        Text("The hike which looks gorgeous in photos but is event better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                            .font(.footnote)
                            .italic()
                        
                        Text("Dust off the boots! It's time for a walk.")
                            .fontWeight(.heavy)
                            .foregroundColor(.customGreenMedium)
                    }
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ){
                Text("List Row")
            }//: SECTION
        }// LIST
    }
}
#Preview {
    HikeSettingsView()
}
