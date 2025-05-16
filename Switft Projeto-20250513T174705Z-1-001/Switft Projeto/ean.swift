//
//  ean.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 07/11/24.
//

import SwiftUI

struct ean: View {
    @StateObject var ean = VM()
    var body: some View{
        HStack{
            ScrollView{
                VStack{
                    ForEach(ean.ue, id: \.self){
                        caraca in
                        Text(caraca.umidade!)
                    }
                }.onAppear(){
                    ean.fetch()
                }
            }
        }
    }
    }


#Preview {
    ean()
}
