//
//  SongView.swift
//  desafio08
//
//  Created by Turma02-28 on 12/02/25.
//

import SwiftUI

struct SongView: View {
    var info: Song
    @State var icone: String = "play.fill"
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [info.cor, .black]), startPoint: .top, endPoint: .bottom).zIndex(0.0)
            HStack{ // HEADER
                Text("11:99").padding(.leading,30)
                Spacer()
                Image(systemName: "wifi")
                Image(systemName: "battery.50percent").padding(.trailing,25)
            }.padding(.bottom, 760)
            VStack{
                AsyncImage(url: URL(string: info.capa), content: { img in
                    img.resizable()
                        .frame(width: 350, height: 350)
                }, placeholder: {
                    Rectangle()
                        .frame(width: 350, height: 350)
                })
                
                Text("\(info.name)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text("\(info.artist)").font(.title3)
                
//                Image(systemName: "line.diagonal").font(.system(size: 100)).rotationEffect(.degrees(45))
                
                HStack{
                    
                    Spacer()
                    Image(systemName: "shuffle").resizable().frame(width: 30,height: 30).scaledToFit()
                    Spacer()
                    Image(systemName: "backward.end.fill").font(.system(size: 40))
                    Spacer()
                    
                    Button("", systemImage: icone, action: {
                        if (icone == "play.fill"){
                            icone = "pause.fill"
                        }else if(icone == "pause.fill"){
                            icone = "play.fill"
                        }
                    }).font(.system(size: 50))
                    
                    Spacer()
                    Image(systemName: "forward.end.fill").resizable().frame(width: 35,height: 35).scaledToFit()
                    Spacer()
                    Image(systemName: "repeat").resizable().frame(width: 30,height: 30).scaledToFit()
                    Spacer()
                }.padding(.top,100)
            }.padding().foregroundColor(.white)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    SongView(info: Song(name: "Babe U" , artist: "BRZZA, Aggix", capa: "https://m.media-amazon.com/images/I/41LPq28rnYL._UXNaN_FMjpg_QL85_.jpg", cor: .yellow))
}
