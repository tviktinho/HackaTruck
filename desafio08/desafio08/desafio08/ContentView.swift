//
//  ContentView.swift
//  desafio08
//
//  Created by Turma02-28 on 12/02/25.
//

import SwiftUI

struct ContentView: View {
//    @State private var searchText = ""
//    @State private var searchIsActive = false
//    
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [ .green, .blue, .blue, .black,]), startPoint: .top, endPoint: .bottom).zIndex(0.0).ignoresSafeArea()
                HStack{ // HEADER
                    Text("11:99").padding(.leading,30)
                    Spacer()
                    Image(systemName: "wifi")
                    Image(systemName: "battery.50percent").padding(.trailing,25)
     
                }.padding(.bottom, 760)
                
                
//                VStack{}.searchable(text: $searchText)
                
                ScrollView{
                    VStack{
                        VStack{
                            AsyncImage(url: URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da849880c48c9263c29098c378e8"), content: { img in
                                img.resizable()
                                    .frame(width: 250, height: 250)
                            }, placeholder: {
                                Rectangle()
                                    .frame(width: 250, height: 250)
                            })
                        }.padding(.top,50)
                        Spacer()
                        
                        
                        Text("Brazilian DnB").font(.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold).padding(.top, 1)
                        Text("O samba não morreu e nem deixa morrer. Missing: A conta do samba - Tita Lima(Human Factor Remix)").padding(.bottom, 20).padding(.top, -20).opacity(0.6)
                        HStack{
                            Circle()
                                .frame(width: 30, height: 30)
                            Text("Victor Brizante").fontWeight(.bold)
                        }.padding(.trailing, 200)
                        
                        VStack(alignment: .leading){
                            HStack{
                                Image(systemName: "network")
                                Text("2.382 salvamentos - 4h 58min")
                                Spacer()
                                
                            }.foregroundColor(.black).opacity(0.6).scaledToFill().padding(.leading, 10)
                            
                        }.padding(.trailing, 10)
                        
                        
                        Text("Musicas").font(.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold).padding(.trailing, 250)
                        
                        
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
                                                .frame(width: 50, height: 50)
                                        })
                                        VStack(alignment: .leading){
                                            Text(s.name).fontWeight(.bold)
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
                        
                        Text("Sugeridos").font(.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold).padding(.trailing, 250)
                        ScrollView(.horizontal){
                            HStack{
                                AsyncImage(url: URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da849880c48c9263c29098c378e8"), content: { img in
                                    img.resizable()
                                        .frame(width: 250, height: 250)
                                }, placeholder: {
                                    Rectangle()
                                        .frame(width: 250, height: 250)
                                    
                                })
                                
                                AsyncImage(url: URL(string: "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da849880c48c9263c29098c378e8"), content: { img in
                                    img.resizable()
                                        .frame(width: 250, height: 250)
                                }, placeholder: {
                                    Rectangle()
                                        .frame(width: 250, height: 250)
                                })
                                
                            }
                        }
                        
                        
                    }.zIndex(2.0)
                }.padding(.top,30)
            }
        }.ignoresSafeArea().accentColor(.black)
    }
}

#Preview {
    ContentView()
}
