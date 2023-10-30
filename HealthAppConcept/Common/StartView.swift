//
//  StartView.swift
//  HealthAppConcept
//
//  Created by Артур Валдна on 29.10.2023.
//

import SwiftUI

struct StartView: View {
    public let userName: String
    
    var body: some View {
        VStack{
            
            VStack(alignment: .center, spacing: 20){
                UserAvatar()
                
                // Welcome text for user
                Text("Hi, \(userName)!")
                    .font(Font.custom("Inter", size: 28)
                        .weight(.bold))
                    .foregroundColor(Color("White"))
                
                // Loading bar
                LoadingCircleBar()
            }
            .padding(EdgeInsets(top: 50, leading: 100, bottom: 300, trailing: 100))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Dewberry"))
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(userName: "Svetlana")
            .background(Color("LightGray"))
    }
}
