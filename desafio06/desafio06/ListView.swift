//
//  ListView.swift
//  desafio06
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack(){
            VStack{
                    List{
                        NavigationLink(destination: RosaView()){
                            HStack{
                                Text("Rosa")
                                Spacer()
                                Image(systemName: "paintbrush")
                            }
                            
                        }
                        
                        NavigationLink(destination: AzulView()){
                            HStack{
                                Text("Azul")
                                Spacer()
                                Image(systemName: "paintbrush.pointed")
                            }
                        }
                        NavigationLink(destination: CinzaView()){
                            HStack{
                                Text("Cinza")
                                Spacer()
                                Image(systemName: "paintpalette")
                            }
                        }
                }
            }.navigationTitle("Lista")
        }
    }
}

#Preview {
    ListView()
}
