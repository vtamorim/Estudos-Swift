//
//  sla.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 31/10/24.
//

import SwiftUI

struct sla: View {
    @State var fundo = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .leading)
    @State var legal: String
    @State var wow:String
    @State var hm:String
    var body: some View {
        ZStack{
            fundo
                .ignoresSafeArea()
            VStack{
                HStack{
                    AsyncImage(url: URL(string: legal)){
                        img in img
                            .image?.resizable()
                            .frame(width: 250,height: 250)
                            .padding([.bottom],200)
                    }}
                VStack{
                    Text(hm)
                        .foregroundStyle(.white)
                    
                    
                    Text(wow)
                        .foregroundStyle(.gray)
                }
            
                
                HStack{
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 40,height: 40)
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 40,height: 40)
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width:60,height: 60)
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 40,height: 40)
                        .foregroundColor(.white)
                        .padding()
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 40,height: 40)
                        .padding()
                        .foregroundColor(.white)
                }
                Spacer()
            }
                
            }
        }
    }


#Preview {
    sla(legal:" ",wow:" ",hm: " ")
}
