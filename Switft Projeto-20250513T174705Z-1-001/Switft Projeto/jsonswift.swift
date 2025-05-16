//
//  jsonswift.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 04/11/24.
//

import Foundation

class VM : ObservableObject {
    
    @Published var ue: [agua] = []
    
    func fetch(){
    
        let task = URLSession.shared.dataTask(with:URL(string:"http://192.168.128.16:1880/sensor")!){ data, _, error in
            do{
                self.ue = try JSONDecoder().decode([agua].self, from: data!)
            }
            catch{
            print(error)
            }
        }
        task.resume()
    }
}
