//
//  Modo2View.swift
//  desafio07
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct Modo2View: View {
    @State var name: String = " "
    var body: some View {
        VStack{
            VStack{
                TextField("nome", text: $name)
                Text("Bem Vindo, \(name)").font(.title)
                
                NavigationLink(destination: Modo2_2View(nome: name)){
                    Text("Acessar Tela").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                
                
            }.frame(width: 250, height: 100)
                .background(.pink)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            
            
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.black)
    }
    
}

#Preview {
    Modo2View()
}
