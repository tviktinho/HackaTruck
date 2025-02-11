//
//  AzulView.swift
//  desafio06
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue
            Circle().zIndex(1.0)
            VStack{
                Image(systemName: "paintbrush.pointed")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }.zIndex(2.0)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    AzulView()
}
