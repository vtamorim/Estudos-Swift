//
//  listaView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct listaView: View {
    var body: some View {
        ZStack{
            List{
                HStack{
                    Text("Qualquer Coisa")
                    Spacer()
                    Image(systemName:"paintbrush")
                        .resizable()
                        .frame(width: 30,height: 30)
                }
                HStack{
                    Text("O que foi?")
                    Spacer()
                    Image(systemName:"paintpalette")
                        .resizable()
                        .frame(width: 30,height: 30)
                }
                HStack{
                    Text("Eae?")
                    Spacer()
                    Image(systemName:"paintbrush.pointed")
                        .resizable()
                        .frame(width:30,height: 30)
                }
            }
        }
    }
}

#Preview {
    listaView()
}
