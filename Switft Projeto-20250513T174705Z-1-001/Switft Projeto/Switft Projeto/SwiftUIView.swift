//
//  SwiftUIView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 24/10/24.
//

import SwiftUI

struct SwiftUIView7: View {
    @State private var name:String = ""
    @State private var showingalert = false
    var body: some View {
        VStack(alignment: .center) {
            Text("Bem-vindo,\(name)")
            TextField("Digite seu nome", text: $name)
                .multilineTextAlignment(.center)
        }
        Spacer()
        ZStack{
            Image(.image)
                .resizable()
                .frame(width: 500,height: 300)
                .opacity(0.3)
            Image(.sla)
                .resizable()
                .frame(width: 360,height: 200)
        }
        Spacer()
        Button("Entrar"){
            showingalert=true
        }
        .alert(isPresented: $showingalert){
            Alert(
            title: Text("Alerta!"),
            message: Text("Você está indo para outro aplicativo"))
        }
            
        
    }
}

#Preview {
    SwiftUIView7()
}
