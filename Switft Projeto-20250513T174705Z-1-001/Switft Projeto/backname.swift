//
//  backname.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 30/10/24.
//

import SwiftUI

struct backname: View {
    var name:String
    var body: some View {
        VStack{
            Text("Volte, \(name)")
        }
        
    }
    
}
#Preview {
    backname(name: "")
}
