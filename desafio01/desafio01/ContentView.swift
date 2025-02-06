//
//  ContentView.swift
//  desafio01
//
//  Created by Turma02-28 on 05/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            HStack{
                VStack {
                    
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .foregroundColor(.red)
                    
                    Spacer()
                    
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .foregroundColor(.green)
                }
                Spacer()
            }
            HStack{
                VStack{
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .foregroundColor(.blue)
                    Spacer()
                    
                    Rectangle()
                        .frame(width: 100,height: 100)
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
