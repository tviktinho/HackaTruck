//
//  ContentView.swift
//  desafio02
//
//  Created by Turma02-28 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            
            Image("imagem")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 150, height: 100)
            
                
            VStack{
                Text("HackaTruck")
                    .foregroundColor(.red)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("77 Universidades")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("8 Estados visitados")
                    .foregroundColor(.green)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
