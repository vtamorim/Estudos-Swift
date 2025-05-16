//
//  pinkView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct pinkView: View {
    @State private var fundo = Color.pink
    var body: some View {
        ZStack{
            fundo
            
            VStack{
                Image( systemName: "paintbrush")
                    .resizable()
                    .frame(width: 300,height: 300)
                    .padding(30)
                    .background(.black)
                    .cornerRadius(170.0)
                    .foregroundColor(.pink)
            }
            .padding()
            
            
        }
            }
        }
            
        


#Preview {
    pinkView()
}
