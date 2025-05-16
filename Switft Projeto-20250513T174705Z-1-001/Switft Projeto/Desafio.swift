//
//  Desafio.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 24/10/24.
//

import SwiftUI

struct Desafio: View {
    var body: some View {
        VStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Ir para o Instagram")
            })
            
            HStack{
            
            Image(.image)
                .resizable()
                .frame(width: 150,height: 150)
                .clipShape(
                    RoundedRectangle(cornerRadius: 75)
                )
            Spacer()
            VStack{
                Text("Hackatruck")
                    .foregroundStyle(.red)
                Text("50 Universidades")
                    .foregroundStyle(.blue)
                Text("5 Regiões do Brasil")
                    .foregroundStyle(.yellow)
            }
            .padding(40)
            
        }
    }
    }
}

#Preview {
    Desafio()
}
