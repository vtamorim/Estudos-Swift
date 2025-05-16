//
//  SegundaView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct SegundaView: View {
    @State private var fundo = Color.fundo2
    var body: some View {
        ZStack{
            fundo
            VStack{
                Text("Nome: Tiago")
                Text("O que ele acha? n sei")
                
            }
            .padding(50)
            .background(Color.pink)
            .cornerRadius(10.0)
            
        }
    }
}

#Preview {
    SegundaView()
}
