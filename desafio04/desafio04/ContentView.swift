//
//  ContentView.swift
//  desafio04
//
//  Created by Turma02-28 on 07/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    @State private var nome: String = ""
    var body: some View {
        VStack {
            ZStack{
                VStack{
                    Text("Bem Vindo, "+nome)
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    TextField("Seu Nome", text: $nome)
                        .padding(.leading,160)
                    
                }.zIndex(2.0).padding(.bottom,600)
                
                HStack{
                    Image("Captura de Tela 2023-01-18 às 22.59.48")
                        .resizable()
                        .opacity(0.40)
                        .scaledToFill()
                        .frame(width: 400,height: 900)
                }.zIndex(1.0)
                
                VStack{
                    HStack{
                        Image("logo").resizable()
                    }
                    HStack{
                        Image("truck").resizable()
                    }
                }
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .frame(width: 300,height: 300)
                
                HStack{
                    Button("Entrar") {
                        showAlert = true
                    }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 50)
                }.zIndex(2.0).padding(.top,700)
                
                
                    .alert("Alerta", isPresented: $showAlert) {
                        Button("Vamos lá") { }
                    } message: {
                        Text("Voce ira iniciar o desafio da aula agora!")
                    }
                
            }.padding(.bottom)
        }
    }
}




#Preview {
    ContentView()
}
