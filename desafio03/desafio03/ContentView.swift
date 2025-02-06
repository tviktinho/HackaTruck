//
//  ContentView.swift
//  desafio03
//
//  Created by Turma02-28 on 06/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack {
                HStack{ //header
                    Spacer()
                    VStack{
                        ZStack{
                            Rectangle()
                                .foregroundColor(.gray)
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 100, height: 100)
                            
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.blue)
                                .frame(width: 30,height: 30)
                                .offset(x: 40,y: 40)
                        }
                    }
                    Spacer()
                    VStack{ //numeros e botoes
                        HStack{ //numeros
                            VStack{
                                Text("8").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Text("posts")
                            }
                            
                            VStack{
                                Text("12k").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Text("followers")
                            }
                            
                            VStack{
                                Text("2k").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Text("following")
                            }
                            
                        }
                        Button("Editar Perfil") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .foregroundColor(.black)
                        .frame(width: 180, height: 35)
                        .background(.gray)
                        .cornerRadius(8)
                        
                    }
                    Spacer()
                }
            }
            //Spacer()
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text("Victor Brizante")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                        HStack{
                            Text("descricao muito foda de um perfil bem legal")
                            Spacer()
                        }
                    }
                }.padding()
                
                HStack(spacing: 80){
                    Image(systemName: "square.grid.3x3.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Image(systemName: "light.panel.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                    Image(systemName: "folder")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                }.padding(20)
                    
            }
            
            //feed
            VStack{
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    
                }
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    
                }
                HStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundColor(.gray)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
