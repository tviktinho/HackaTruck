//
//  data.swift
//  desafio09
//
//  Created by Turma02-28 on 13/02/25.
//

import Foundation
import MapKit

struct Place : Hashable{
    let name : String
    let descricao : String
    let bandeira : String
    let latitude : Double
    let longitude : Double
//  let coordenada : CLLocationCoordinate2D
}

var Locais = [
    Place(name: "Pindamonhangaba",
          descricao: "Pindamonhangaba é um município brasileiro da Região Metropolitana do Vale do Paraíba e Litoral Norte no interior do estado de São Paulo. É uma das dez cidades que integram a Região Imediata de Taubaté-Pindamonhangaba que, por sua vez, é uma das cinco regiões imediatas que formam a Região Intermediária de São José dos Campos.",
          bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Bandeira_Pindamonhangaba_SaoPaulo_Brasil.svg/800px-Bandeira_Pindamonhangaba_SaoPaulo_Brasil.svg.png", 
          latitude: -22.933319541487926, longitude: -45.459194232453704),
    
    Place(name: "Bonito-MS",
          descricao: "Bonito é uma cidade e centro de ecoturismo no estado brasileiro de Mato Grosso do Sul. A área circundante é conhecida pelos rios de água translúcida, como o Rio da Prata, um destino de snorkeling repleto de peixes. O Abismo Anhumas é uma enorme caverna coberta de estalactites que permite a prática de rapel e de mergulho num lago subterrâneo. Bandos de araras criam ninhos no profundo Buraco das Araras, de cor ocre. ",
          bandeira: "https://upload.wikimedia.org/wikipedia/commons/9/97/Bandeira_Bonito-MS.png",
          latitude: -21.458953195350592,  longitude: -56.440882082225734),
    
    Place(name: "Taubaté",
          descricao: "Taubaté é um município brasileiro no interior do estado de São Paulo, localizado na região do Vale do Paraíba, a 130 km da capital do estado, São Paulo. O município é formado pela sede e pelo distrito de Quiririm. ",
          bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f6/Bandeira_de_Taubaté.png/800px-Bandeira_de_Taubaté.png",
          latitude: -23.013259932868003, longitude: -45.56037935678288),
    
    Place(name: "Delfinópolis",
          descricao: "No início do século XX, a cidade recebeu o nome de Delfinópolis em homenagem ao então governador Delfim Moreira da Costa Ribeiro. Delfinópolis possui uma área de 1.171 km² e pouco mais de 6.800 habitantes.",
          bandeira: "https://upload.wikimedia.org/wikipedia/commons/f/f6/Delfinópolismgbandeira.png",
          latitude: -20.345040901431474, longitude: -46.84944374834056),
    
    Place(name: "Salvador",
          descricao: "Salvador, a capital do estado da Bahia no nordeste do Brasil, é conhecida pela arquitetura colonial portuguesa, pela cultura afrobrasileira e pelo litoral tropical. O bairro do Pelourinho é seu coração histórico, com vielas de paralelepípedo terminando em praças grandes, prédios coloridos e igrejas barrocas, como São Francisco, com trabalhos em madeira revestidos com ouro.",
          bandeira: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Bandeira_de_Salvador.svg/486px-Bandeira_de_Salvador.svg.png",
          latitude: -12.980120162308067, longitude: -38.482723858979305) 

    
]


