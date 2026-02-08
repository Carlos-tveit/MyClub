import SwiftUI
import FirebaseFirestore
import Combine



struct Player: Identifiable {
    var id: String
    var name: String
    var team: String
}


class PlayerViewModel: ObservableObject {
    @Published var players = [Player]() // This is the list your UI will watch
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        // We "listen" to the players collection
        db.collection("players").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            // We turn the Firebase documents into our Player model
            self.players = documents.map { queryDocumentSnapshot -> Player in
                let data = queryDocumentSnapshot.data()
                let id = queryDocumentSnapshot.documentID
                let name = data["name"] as? String ?? ""
                let team = data["team"] as? String ?? ""
                
                return Player(id: id, name: name, team: team)
            }
        }
    }
}





struct TeamView: View {
    
    @StateObject var viewModel = PlayerViewModel()
    var body: some View {
        
        ZStack {
            Color(.systemGray)
                .ignoresSafeArea()
            
            
            
            VStack() {
                
                // Klubnavn:
                Text("Pensjonistlaget")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                Text("\n")
                
                
                HStack() {
                    Spacer()
                    NavigationLink {
                        TeamView()
                    } label: {
                        Text("Lagg")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.green)
                    }
                    Spacer()
                    NavigationLink {
                        TrainingView()
                    } label: {
                        Text("Trening")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    NavigationLink {
                        MatchView()
                    } label: {
                        Text("Kamp")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    Spacer()
                }
                
               
                    
                VStack(alignment: .leading, spacing: 20) {
                    
                    HStack(){
                        Text("Spillere")
                            .font(.title)
                            .bold()
                        Spacer()
                        Text("Alder")
                            .font(.title)
                            .bold()
                    }
                    
                    ForEach(viewModel.players) { player in
                        HStack() {
                            Image(systemName: "figure.indoor.soccer")
                            Text(player.name) // <--- This shows the real name!
                            Spacer()
                            Text(player.team) // Or use player.id / age if you add it later
                        }
                    }
                }
                .padding()
                .background {
                    Rectangle()
                        .foregroundStyle(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(radius: 15)
                }
                .frame(maxWidth: .infinity, alignment: .leading) 
                .padding(.horizontal)
                
                Spacer()
                    
                
            
            }
        }.onAppear {
            viewModel.fetchData()
        }
    }
}

#Preview {
    TeamView()
}
