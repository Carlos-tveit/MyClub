import SwiftUI

struct ContentView: View {
    
    @State var tall = 0
    var navn = "Carlos"
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGray)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    Text("Pensjonistlaget")
                        .font(.title)
                    
                    
                    
                    HStack() {
                        Spacer()
                        Text("Lagoversikt")
                        Spacer()
                        NavigationLink("Trening") {
                            TeamView()
                        }
                        Spacer()
                        Text("Kamper")
                        Spacer()
                    }
                    
                    HStack() {
                        
                        Text("MyClub\n")
                            .font(.title)
                            .bold()
                        
                        VStack() {
                            
                            HStack() {
                                Image(systemName: "figure.indoor.soccer")
                                
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                            }
                            
                            Text("Ha det gøy")
                        }
                        .foregroundStyle(.white)
                        .font(.caption)
                        
                    }
                    HStack() {
                        Button {
                            addNumber()
                        } label: {
                            Image(systemName: "figure.indoor.soccer")
                        }
                        
                        NavigationLink("Training") {
                            TrainingView()
                        }
                        Image(systemName: "soccerball.inverse")
                        Text(navn)
                        Text(String(tall))
                        Spacer()
                        Text("Ha det gøy")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                    
                    
                    Image("football_pitch")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    
                }
                .padding()
                .background() {
                    Rectangle()
                        .foregroundStyle(Color(red: 67/255, green: 151/255, blue: 96/255))
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(radius: 15)
                }
                .padding()
            }
        }
    }
    
    func addNumber() {
        tall = Int.random(in: 2...14)
        tall += 1
        print("Tøft")
    }
}

#Preview {
    ContentView()
}
