//
//  Modo2.2View.swift
//  desafio07
//
//  Created by Turma02-28 on 11/02/25.
//

import SwiftUI

struct Modo2_2View: View {
    var nome: String
    var body: some View {
        Text("Volte, \(nome)!")
    }
}

#Preview {
    Modo2_2View(nome: "juninho")
}
