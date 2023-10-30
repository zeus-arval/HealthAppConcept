//
//  UserAvatar.swift
//  HealthAppConcept
//
//  Created by Артур Валдна on 29.10.2023.
//

import SwiftUI

struct UserAvatar: View {
    private let scale: CGFloat = 0.92
    
    var body: some View {
        ZStack{
            Circle()
                .fill(Color("White"))
                .overlay(content: {
                    Image("AvatarImage")
                        .resizable()
                        .scaleEffect(x: scale, y: scale)
                })

        }
    }
}

struct UserAvatar_Previews: PreviewProvider {
    static var previews: some View {
        UserAvatar()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("LightGray"))
    }
}
