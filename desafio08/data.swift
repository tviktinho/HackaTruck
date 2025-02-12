//
//  data.swift
//  desafio08
//
//  Created by Turma02-28 on 12/02/25.
//

import Foundation

struct Song : Identifiable{
    var id = UUID()
    var name : String
    var artist : String
    var capa : String
}

var Musicas = [
    Song(name: "Sambassim", artist: "DJ Patife", capa: "https://i.scdn.co/image/ab67616d0000b273c9c31141ed6244ca84ad0555"),
    Song(name: "A Festa" , artist: "Trüby Trio", capa: "https://s.mxmcdn.net/images-storage/albums5/5/2/7/6/9/6/33696725_500_500.jpg"),
    Song(name: "Samba Tune" , artist: "T-Break, Baithead", capa: "https://i.scdn.co/image/ab67616d0000b273d5ebbf7e4ccdbbdd6ba83264"),
    Song(name: "Um Samba Pra Cantar" , artist: "Motta & Fabio Kura", capa: "https://i.scdn.co/image/ab67616d0000b273ab0ce05bc60d0661120996f5"),
    Song(name: "Baianá" , artist: "Nia Archives", capa: "https://i.scdn.co/image/ab67616d0000b273ed8761730439da61f8a67ae3"),
    Song(name: "Dia De Sol" , artist: "DJ Marky, XRS, Gilberto Gil", capa: "https://i.scdn.co/image/ab67616d0000b273cf34ff6cc163a01911fd318e"),
    Song(name: "Não Me Deixe Só" , artist: "Vanessa Da Mata, Fernando Santos", capa: "https://i.scdn.co/image/ab67616d0000b273c7c38f7457631f3bab82430c"),
    Song(name: "Babe U" , artist: "BRZZA, Aggix", capa: "https://m.media-amazon.com/images/I/41LPq28rnYL._UXNaN_FMjpg_QL85_.jpg"),
    Song(name: "Sambassim", artist: "DJ Patife", capa: "https://i.scdn.co/image/ab67616d0000b273c9c31141ed6244ca84ad0555"),
    Song(name: "A Festa" , artist: "Trüby Trio", capa: "https://s.mxmcdn.net/images-storage/albums5/5/2/7/6/9/6/33696725_500_500.jpg"),
    Song(name: "Samba Tune" , artist: "T-Break, Baithead", capa: "https://i.scdn.co/image/ab67616d0000b273d5ebbf7e4ccdbbdd6ba83264"),
    Song(name: "Um Samba Pra Cantar" , artist: "Motta & Fabio Kura", capa: "https://i.scdn.co/image/ab67616d0000b273ab0ce05bc60d0661120996f5"),
    Song(name: "Baianá" , artist: "Nia Archives", capa: "https://i.scdn.co/image/ab67616d0000b273ed8761730439da61f8a67ae3"),
    Song(name: "Dia De Sol" , artist: "DJ Marky, XRS, Gilberto Gil", capa: "https://i.scdn.co/image/ab67616d0000b273cf34ff6cc163a01911fd318e"),
    Song(name: "Não Me Deixe Só" , artist: "Vanessa Da Mata, Fernando Santos", capa: "https://i.scdn.co/image/ab67616d0000b273c7c38f7457631f3bab82430c"),
    Song(name: "Babe U" , artist: "BRZZA, Aggix", capa: "https://m.media-amazon.com/images/I/41LPq28rnYL._UXNaN_FMjpg_QL85_.jpg")
]
