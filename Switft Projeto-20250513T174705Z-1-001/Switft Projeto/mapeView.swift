import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let flag: String // URL da imagem da bandeira
    let imageName: String // Nome da imagem local para anotações
    let desc: String
}

struct MapView: View {
    @State private var nome = " "
    @State private var position =
    MapCameraPosition.region(MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 58.826816, longitude: -121.131133),
        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
    ))
    
    @State private var selectedLocation: Location?
    @State private var showingSheet = false // Estado para controlar a exibição da Sheet
    
    let locations = [
        Location(name: "Brasil", coordinate: CLLocationCoordinate2D(latitude: -5.817260, longitude: -35.197506), flag: "https://s1.static.brasilescola.uol.com.br/be/conteudo/images/2-bandeira-do-brasil.jpg", imageName: "brasil_flag", desc: "O Brasil, um vasto país sul-americano..."),
        Location(name: "EUA", coordinate: CLLocationCoordinate2D(latitude: 35.351788, longitude: -97.503358), flag: "https://static.todamateria.com.br/upload/ba/nd/bandeira_americana_bb.jpg", imageName: "eua_flag", desc: "Os EUA são um país com 50 estados..."),
        Location(name: "Canadá", coordinate: CLLocationCoordinate2D(latitude: 51.071422, longitude: -113.941913), flag: "https://s3.static.brasilescola.uol.com.br/be/2022/10/bandeira-do-canada.jpg", imageName: "canada_flag", desc: "O Canadá é um país norte-americano...")
    ]
    
    var body: some View {
        VStack {
            Map(position: $position) {
                ForEach(locations) { location in
                    Annotation("", coordinate: location.coordinate) {
                        VStack {
                            Image(systemName:"mappin") // Usando imagem local nas anotações
                                .resizable()
                                .frame(width: 30, height: 30) // Ajuste o tamanho conforme necessário
                                .cornerRadius(5)
                        }
                        .onTapGesture {
                            selectedLocation = location
                            showingSheet = true // Mostrar a sheet ao tocar na anotação
                        }
                    }
                }
            }
            .sheet(isPresented: $showingSheet) {
                if let location = selectedLocation {
                    LocationDetailView(location: location, showingSheet: $showingSheet)
                }
            }
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(locations) { location in
                        Button(action: {
                            nome = location.name
                            position = .region(MKCoordinateRegion(center: location.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)))
                        }) {
                            AsyncImage(url: URL(string: location.flag)) { image in
                                image.resizable()
                                    .frame(width: 105, height: 65)
                            } placeholder: {
                                ProgressView()
                                    .frame(width: 75, height: 50)
                            }
                            .cornerRadius(5)
                        }
                    }
                }
                .padding()
            }
            
        }
        Text(nome)
    }
    
    struct LocationDetailView: View {
        let location: Location
        @Binding var showingSheet: Bool // Binding para controlar a exibição da Sheet
        
        var body: some View {
            NavigationView {
                VStack {
                    Text(location.name)
                        .font(.largeTitle)
                        .padding()
                    
                    AsyncImage(url: URL(string:location.flag))
                    { img in img
                            .image?
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(10)
                            .padding()
                    }
                    Text(location.desc)
                        .padding()
                    
                    Spacer()
                }
                .navigationTitle("Detalhes")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button("Fechar") {
                    showingSheet = false // Fechar a Sheet
                })
            }
        }
    }
}
#Preview {
    MapView()
}
