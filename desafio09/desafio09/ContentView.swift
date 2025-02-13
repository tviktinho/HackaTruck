//
//  ContentView.swift
//  desafio09
//
//  Created by Turma02-28 on 13/02/25.
//

import SwiftUI
import Foundation
import MapKit

struct ContentView: View {
    @State var local =  Place(name: "Pindamonhangaba",
                              descricao: "Pindamonhangaba é um município brasileiro da Região Metropolitana do Vale do Paraíba e Litoral Norte no interior do estado de São Paulo. É uma das dez cidades que integram a Região Imediata de Taubaté-Pindamonhangaba que, por sua vez, é uma das cinco regiões imediatas que formam a Região Intermediária de São José dos Campos.",
                              bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Bandeira_Pindamonhangaba_SaoPaulo_Brasil.svg/800px-Bandeira_Pindamonhangaba_SaoPaulo_Brasil.svg.png",
                              latitude: -22.933319541487926, longitude: -45.459194232453704)
    @State private var isShowingSheet = false
    @State private var position = MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -18.724304231226586, longitude: -47.523979207441265),
        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))
    )
    var body: some View {
        ZStack {
            Map(position: $position){
                ForEach(Locais, id: \.self){
                    p in
                    Annotation(p.name, coordinate: CLLocationCoordinate2D(latitude: p.latitude, longitude: p.longitude)) {
                        ZStack {
                            Text("📍").font(.system(size: 50))
                                .padding(5)
                        }.onTapGesture {
                            local = p
                            position = MapCameraPosition.region(MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: p.latitude, longitude: p.longitude),
                                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                            ))
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            VStack{
                Picker(selection: $local, label: Text("Local")) {
                    ForEach(Locais, id: \.self) { local in
                        Text(local.name)
                    }
                }.onChange(of: local) {
                    position = MapCameraPosition.region(MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: local.latitude, longitude: local.longitude),
                        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                    ))
                }
            }
            .zIndex(2.0)
            .frame(width: 250, height: 50)
            .background(.black)
            .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            .cornerRadius(15.0)
            .padding(.bottom, 700)
            
            
            VStack{
                Button("Saiba Mais") {
                    isShowingSheet.toggle()
                }
                .sheet(isPresented: $isShowingSheet,
                       onDismiss: didDismiss) {
                    VStack {
                        Text("\(local.name)")
                            .font(.title)
                            .padding(50)
                        Spacer()
                        VStack{
                            AsyncImage(url: URL(string: local.bandeira), content: { img in
                                img.resizable()
                                    .frame(width: 250, height: 250)
                            }, placeholder: {
                                Rectangle().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                            })
                        }.padding(.top,50)
                        Text("\(local.descricao)")
                        Spacer()
                        VStack{
                            Button("Dismiss",
                                   action: { isShowingSheet.toggle() })
                        }
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 30)
                        .background(.white)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(.black)
                }
            }
            .zIndex(2.0)
            .padding(.top,750)
            .foregroundColor(.black)
            
            
        }
    }
}

func didDismiss(){
    
}


#Preview {
    ContentView()
    //    ContentView(local: Place(name: "a", descricao: "b", bandeira: "b", latitude: 1, longitude: 1))
}
