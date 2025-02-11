//
//  ContentView.swift
//  desafio06
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RosaView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListView()
                .tabItem{
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}
        
    #Preview {
        ContentView()
    }
    
