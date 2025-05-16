//
//  TerceiraView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct TerceiraView: View {
    @State private var name:String = " "
    @State private var fundo = Color.fundo2
    var body: some View {
            NavigationStack{
                VStack{
                    TextField("Digite Seu Nome",text: $name)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    Text("Bem-vindo,\(name)")
                }
                VStack{
                    NavigationLink(destination:backname(name: name)){
                        Text("Acessar Info")
                            .padding([.bottom,.top],20)
                            .padding([.leading,.trailing],40)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(20.0)
                    }
                }
            }
        }
    
    }


#Preview {
    TerceiraView()
}
