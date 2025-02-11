//
//  CinzaView.swift
//  desafio06
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color.gray
            Circle().zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            VStack{
                Image(systemName: "paintpalette")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .foregroundColor(.gray)
            }.zIndex(2.0)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    CinzaView()
}
