//
//  Spotify.swift
//  Switft Projeto
//
//  Created by Turma01-16 on 31/10/24.
//

import SwiftUI

struct Spotify: View {
    var array = [
        mus(id: 0, name: "Numb", artist: "Linkin Park", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/10/c311bb4-hybrid-theory.jpg"),
        mus(id: 1, name: "Pain", artist: "Three Days Grace", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/10/c311bb4-hybrid-theory.jpg"),
        mus(id: 2, name: "Monster", artist: "Skillet", capa: "https://www.audiograma.com.br/wp-content/uploads/2015/02/threedaysgrace_h.jpg"),
        mus(id: 3, name: "Countersy Call", artist: "Thousand", capa: "https://www.audiograma.com.br/wp-content/uploads/2015/02/threedaysgrace_h.jpg"),
        mus(id: 4, name: "The Resistance", artist: "Skillet", capa: "https://lastfm.freetls.fastly.net/i/u/770x0/102d7ceaf997969fc7552af5d65e474c.jpg#102d7ceaf997969fc7552af5d65e474c")
    ]
    var lista = [
        alb(id: 0, album: "Paranoia", name: "Hearsteel", capa: "https://lastfm.freetls.fastly.net/i/u/770x0/102d7ceaf997969fc7552af5d65e474c.jpg#102d7ceaf997969fc7552af5d65e474"),
        alb(id: 1, album: "VNSDN", name: "O Grilo", capa: "https://www.audiograma.com.br/wp-content/uploads/2015/02/threedaysgrace_h.jpg"),
        alb(id: 2, album: "Love Dramatic", name: "Inasuki", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/10/c311bb4-hybrid-theory.jpg"),
        alb(id: 3, album: "The Walters", name: "Love you so", capa: "https://akamai.sscdn.co/tb/letras-blog/wp-content/uploads/2019/10/c311bb4-hybrid-theory.jpg")
    ]
    @State private var fundo = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        NavigationStack {
            ZStack {
                fundo
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        HStack {
                            AsyncImage(url: URL(string: array.first?.capa ?? "")) { img in
                                img.image?
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            } placeholder: {
                                ProgressView()
                            }
                        }
                        .padding([.top], 30)
                        .padding([.bottom], 20)
                        
                        Spacer()
                        
                        HStack {
                            Text("Helmet")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding()
                        .frame(height: 15)
                        
                        HStack {
                            AsyncImage(url: URL(string: array.first?.capa ?? "")) { img in
                                img.image?
                                    .resizable()
                                    .frame(width: 30, height: 30)
                            } placeholder: {
                                ProgressView()
                            }
                            Text("Kegable")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding()
                        
                        VStack(spacing: 20) {
                            ForEach(array) { m in
                                NavigationLink(destination: sla(legal: m.capa, wow: m.artist, hm: m.name)) {
                                    HStack {
                                        AsyncImage(url: URL(string: m.capa)) { img in
                                            img.image?
                                                .resizable()
                                                .frame(width: 60, height: 60)
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        VStack(alignment: .leading) {
                                            Text(m.name)
                                                .foregroundStyle(.white)
                                            Text(m.artist)
                                                .foregroundStyle(.gray)
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    }
                                }
                                .multilineTextAlignment(.leading)
                            }
                            
                            Text("Sugeridos")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(height: 105)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(lista) { m in
                                        NavigationLink(destination: sla(legal: m.capa, wow: m.name, hm: m.album)) {
                                            VStack {
                                                AsyncImage(url: URL(string: m.capa)) { img in
                                                    img.image?
                                                        .resizable()
                                                        .frame(width: 200, height: 200)
                                                        .padding()
                                                } placeholder: {
                                                    ProgressView()
                                                }
                                                Text(m.album)
                                                    .font(.title)
                                                    .fontWeight(.bold)
                                                    .foregroundStyle(.white)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct mus: Identifiable {
    var id: Int
    var name: String
    var artist: String
    var capa: String
}

struct alb: Identifiable {
    var id: Int
    var album: String
    var name: String
    var capa: String
}

// Função `sla` básica para evitar erros de compilação
struct sla: View {
    var legal: String
    var wow: String
    var hm: String
    
    var body: some View {
        VStack {
            Text(hm)
                .font(.title)
            Text(wow)
                .font(.subheadline)
            AsyncImage(url: URL(string: legal)) { img in
                img.image?
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
        .padding()
    }
}

#Preview {
    Spotify()
}


