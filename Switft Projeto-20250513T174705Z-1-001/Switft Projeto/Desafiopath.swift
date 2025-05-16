//
//  Desafiopath.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct Desafiopath: View {
    var body: some View {
        Text("das")
        TabView{
            pinkView()
                .tabItem{           Label("Rosa",systemImage: "paintbrush")
                }
            blueView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            grayView()
                .tabItem { Label("Cinza", systemImage: "paintpalette.fill") }
            listaView()
                .tabItem { Label("Lista", systemImage: "list.bullet") }
            
        }
        }
    }


#Preview {
    Desafiopath()
}
