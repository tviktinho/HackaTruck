//
//  ContentView.swift
//  desafio08
//
//  Created by Turma02-28 on 12/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.green, .blue, .black]), startPoint: .top, endPoint: .bottom).zIndex(0.0)
                HStack{
                    Text("11:11").padding(.leading,30)
                    Spacer()
                    Image(systemName: "wifi")
                    Image(systemName: "battery.50percent").padding(.trailing,25)
                }.padding(.bottom, 700)//hora, wifi, etc
                
                ScrollView{
                    VStack{
                        VStack{
                            AsyncImage(url: URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da849880c48c9263c29098c378e8"), content: { img in
                                img.resizable()
                                    .frame(width: 250, height: 250)
                            }, placeholder: {
                                Rectangle()
                            })
                        }.padding(.top,50)
                        Spacer()
                        
                        
                        Text("Brazilian DnB").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.bottom, 20)
                        
                        
                        Text("Musicas").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.trailing, 250)
                        
                        
                        ForEach(Musicas){
                            s in
                            NavigationLink(destination: SongView(info: s)){
                                HStack{
                                    HStack{
                                        AsyncImage(url: URL(string: s.capa), content: { img in
                                            img.resizable()
                                                .frame(width: 50, height: 50)
                                        }, placeholder: {
                                            Rectangle()
                                        })
                                        VStack(alignment: .leading){
                                            Text(s.name).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            Text(s.artist)
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                    }
                                }.foregroundColor(.white)
                                
                                
                            }
                        }.padding(.trailing).padding(.leading)
                        
                        VStack{
                            
                        }.frame(height: 70)
                        
                        Text("Sugeridos").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.trailing, 250)
                        ScrollView(.horizontal){
                            HStack{
                                AsyncImage(url: URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da849880c48c9263c29098c378e8"), content: { img in
                                    img.resizable()
                                        .frame(width: 250, height: 250)
                                }, placeholder: {
                                    Rectangle()
                                })
                                
                                AsyncImage(url: URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da849880c48c9263c29098c378e8"), content: { img in
                                    img.resizable()
                                        .frame(width: 250, height: 250)
                                }, placeholder: {
                                    Rectangle()
                                })
                                
                            }
                        }
                        
                        
                    }.zIndex(2.0)
                }.padding(.top,75)
            }.edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
