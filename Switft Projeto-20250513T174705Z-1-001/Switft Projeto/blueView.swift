//
//  blueView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct blueView: View {
    @State private var fundo = Color.blue
    var body: some View {
        ZStack{
            fundo
            
            VStack{
                Image(systemName:"paintbrush.pointed")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .padding(30)
                    .background(.black)
                    .cornerRadius(170.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview {
    blueView()
}
