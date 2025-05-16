//
//  fieldView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct fieldView: View {
    @State private var fundo = Color.fundo2
    @State private var showSheet = false
    var body: some View {
        ZStack{
            NavigationStack{
                HStack{
                    Image(.sla)
                        .resizable()
                        .frame(width: 250,height: 100)
                }
                Spacer()
                    .padding()
                VStack{
                    NavigationLink(destination:SegundaView()){
                        Text("Modo 1")
                    }
                    
                }
                .padding([.bottom,.top,],30)
                .padding([.leading,.trailing],80)
                .background(Color.pink)
                VStack{
                    NavigationLink(destination:TerceiraView()){
                        Text("Modo 2")
                    }
                }
                .padding([.bottom,.top],30)
                .padding([.leading,.trailing],80)
                .background(Color.pink)
                VStack{
                    Button("Modo 3"){
                        showSheet.toggle()
                    }
                    .padding([.bottom,.top],30)
                    .padding([.leading,.trailing],80)
                    .background(Color.pink)
                    Spacer()
                }
                
            }
            Spacer()
        }
            }    }
            


#Preview {
    fieldView()
}
