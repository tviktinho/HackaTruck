//
//  Modo1View.swift
//  desafio07
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct Modo1View: View {
    var body: some View {
        VStack{
            VStack{
                Text("Nome: Victor")
                Text("Sobrenome: Brizante")
            }.frame(width: 250, height: 100)
                .background(.pink)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.black)
        
    }
}

#Preview {
    Modo1View()
}
