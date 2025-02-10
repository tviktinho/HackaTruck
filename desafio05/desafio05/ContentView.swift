//
//  ContentView.swift
//  desafio05
//
//  Created by Turma02-28 on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var cores : Color = .cinza.opacity(0.5)
    @State private var distancia : Double?
    @State private var tempo : Double?
    @State private var result : Double?
    @State private var imagem : String = "?"
    
    var body: some View {
        VStack{
            VStack{
                VStack{
                    Text("Digite a distancia (km)")
                    TextField(" ", value: $distancia, format: .number).padding().background(.white).cornerRadius(100.0)
                    Spacer()
                    Text("Digite a tempo (h)")
                    TextField(" ", value: $tempo, format: .number).padding().background(.white).cornerRadius(100.0)
                }.frame(width: 300, height: 200)
                
                Button("Calcular") {
                    result = distancia!/tempo!
                    if (result! <= 9.9) {
                        imagem = "turtle"
                        cores = .verdeClaro.opacity(0.9)
                    }else if (result! > 9.9 && result! < 29.9){
                        imagem = "elefante"
                        cores = .azulClaro.opacity(0.9)
                    }else if (result! >= 30 && result! < 69.9){
                        imagem = "avestruz"
                        cores = .laranjaClaro.opacity(0.9)
                    }else if (result! >= 70 && result! < 89.9){
                        imagem = "leao"
                        cores = .amareloClaro.opacity(0.9)
                    }else if (result! > 90 && result! < 130){
                        imagem = "guepardo"
                        cores = .vermelhoClaro.opacity(0.9)
                    }
                }
            }
            
            Spacer()
            VStack{
                Image(imagem)
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .clipShape(Circle())
            }.frame(width: 250,height: 250)
            
            Spacer()
            
            VStack{
                HStack{
                    Text("TARTARUGA")
                    Spacer()
                    Text("(0-9.9km/h)")
                    Spacer()
                    Circle().foregroundColor(.verdeClaro).frame(width: 20)
                }
                HStack{
                    Text("ELEFANTE")
                    Spacer()
                    Text("(10-9.9km/h)")
                    Spacer()
                    Circle().foregroundColor(.azulClaro).frame(width: 20)
                }
                HStack{
                    Text("AVESTRUZ")
                    Spacer()
                    Text("(30-69.9km/h)")
                    Spacer()
                    Circle().foregroundColor(.laranjaClaro).frame(width: 20)
                }
                HStack{
                    Text("LEAO")
                    Spacer()
                    Text("(70-89.9km/h)")
                    Spacer()
                    Circle().foregroundColor(.amareloClaro).frame(width: 20)
                
                }
                HStack{
                    Text("GUEPARDO")
                    Spacer()
                    Text("(90-130km/h)")
                    Spacer()
                    Circle().foregroundColor(.vermelhoClaro).frame(width: 20)
               
                }
            }.padding().frame(width: 270, height: 180).background(.black).foregroundColor(.white).cornerRadius(6.0)
        }.background(cores)
    }
}

#Preview {
    ContentView()
}
