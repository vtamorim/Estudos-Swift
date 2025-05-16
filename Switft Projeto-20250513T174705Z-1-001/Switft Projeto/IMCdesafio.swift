//
//  IMCdesafio.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 24/10/24.
//

import SwiftUI


struct IMCdesafio: View {
    @State private var normal = Color.verde
    @State private var peso = 0
    @State private var altura = 0
    @State private var imc:String = " "
    var body: some View {
        ZStack{
            normal
            VStack
            {
                
                Text("Calculadora IMC")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                TextField("Coloque o seu peso",value: $peso, format: .number)
                    .multilineTextAlignment(.center)
                    .background(.white)
                    .frame(width: 300,height: 40)
                TextField("Coloque a sua altura",value:  $altura, format: .number)
                    .background(.white)
                    .frame(width: 300,height: 40)
                    .multilineTextAlignment(.center)
                Button(action: {
                    let pesovalue = Double(peso)
                    let alturavalue = Double(altura)
                    
                    let resultadoimc = pesovalue / (alturavalue * alturavalue)
                    if Double(resultadoimc) < 18.5{
                        imc = "Baixo Peso"
                        normal = Color.baixopeso
                    }
                    else if Double(resultadoimc) > 18.5 && Double(resultadoimc)<25{
                        imc = "Normal"
                        normal = Color.normal
                    }
                    else if Double(resultadoimc) > 25 && Double(resultadoimc) < 30{
                        imc = "Sobrepeso"
                        normal = Color.sobrepeso
                    }
                    else if Double(resultadoimc) > 30
                    {
                        imc = "Obesidade"
                        normal = Color.obesidade
                        
                    }
                        
                }
                    
                
                    , label: {
                    
                    Text(" Calcular IMC    ")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .frame(width: 200,height: 50)
                        .cornerRadius(10.0)
                    
                    
                })

                VStack{
              Text(imc)
                    Spacer()
                }
            }
            VStack{
                Spacer()
                Image(.tabela)
                    .resizable()
                    .frame(width: 400,height: 250)
            }
        }
    }
}


#Preview{
    IMCdesafio()
}
