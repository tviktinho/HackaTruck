//
//  ContentView.swift
//  desafio07
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSheet = false
    var body: some View {
        NavigationStack{
            VStack{
                
                Image("logo").resizable().scaledToFit()
                Spacer()
                
                NavigationLink(destination: Modo1View()){
                    Text("Modo 1").frame(width: 250,height: 100).background(Color.pink).cornerRadius(5.0).foregroundColor(.white).fontWeight(.bold)
                }
                
                NavigationLink(destination: Modo2View()){
                    Text("Modo 2").frame(width: 250,height: 100).background(Color.pink).cornerRadius(5.0).foregroundColor(.white).fontWeight(.bold)
                }
                
                Button("Modo 3") {
                    isShowingSheet.toggle()
                }.foregroundColor(.white).fontWeight(.bold)
                .sheet(isPresented: $isShowingSheet,
                       onDismiss: didDismiss) {
                    VStack {
                        Text("Sheet View")
                            .font(.title)
                            .padding(50)
                        Spacer()
                        Text("Nome: Victor")
                        Text("Sobrenome: Brizante")
                        Spacer()
                        VStack{
                            Button("Dismiss",
                                   action: { isShowingSheet.toggle() })
                        }
                    }.foregroundColor(.white).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(.black)
                }
                       .frame(width: 250,height: 100).background(Color.pink).cornerRadius(5.0)
                Spacer()
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/).background(.black)
        }
        
    }
}
func didDismiss(){
    
}

#Preview {
    ContentView()
}
