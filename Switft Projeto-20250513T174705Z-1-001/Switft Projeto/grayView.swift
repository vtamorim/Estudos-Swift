//
//  grayView.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct grayView: View {
    @State private var fundo = Color.gray
    var body: some View {
        ZStack{
            fundo
            VStack{
                Image(systemName:"paintpalette")
                    .resizable()
                    .frame(width: 270,height: 250)
                    .padding(40)
                    .background(.black)
                    .cornerRadius(170.0)
                    .foregroundColor(.gray)
              
            }
        }
    }
}

#Preview {
    grayView()
}
