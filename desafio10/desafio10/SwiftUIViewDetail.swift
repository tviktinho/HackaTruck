//
//  SwiftUIViewDetail.swift
//  desafio10
//
//  Created by Turma02-28 on 17/02/25.
//

import SwiftUI

struct SwiftUIViewDetail: View {
    
    var card : cards
    
    var body: some View {
        Text(card.name!)
    }
}


//var body: some View {
//    ZStack{
//        LinearGradient(gradient: Gradient(colors: [ .green, .blue, .blue, .black,]), startPoint: .top, endPoint: .bottom).zIndex(0.0).ignoresSafeArea()
//        ScrollView{
//            VStack{
//                
//                
//            }
//        }
//    }
//}
//}
