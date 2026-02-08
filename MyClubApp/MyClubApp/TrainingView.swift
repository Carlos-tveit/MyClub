import SwiftUI

struct TrainingView: View {
    
    @State var tall = 0
    var navn = "Carlos"
    
    
    var body: some View {
        NavigationStack {
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
                
                // Header
                HStack() {
                    Spacer()
                    NavigationLink {
                        TeamView()
                    } label: {
                        Text("Lagg")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    Spacer()
                    NavigationLink {
                        TrainingView()
                    } label: {
                        Text("Trening")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.green)
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
                
                // Scrollable area
                ScrollView {
                    VStack(spacing: 10) {
                        VStack(alignment: .leading, spacing: 20) {
                            
                            
                            Text("Tittel")
                                .font(.title)
                                .bold()
                            
                            HStack() {
                                Text("Sted: ")
                                    .bold()
                                Spacer()
                                Text("HVL Kunstgressbane")
                            }
                            HStack() {
                                Text("Dato: ")
                                    .bold()
                                Spacer()
                                Text("20.02.2024")
                            }
                            HStack() {
                                Text("Tid: ")
                                    .bold()
                                Spacer()
                                Text("19:00")
                            }
                            HStack() { // Her skal det være en poll
                                Text("Kommer du? ")
                                    .bold()
                                Spacer()
                                Text("Ja")
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
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            
                            Text("Tittel")
                                .font(.title)
                                .bold()
                            
                            HStack() {
                                Text("Sted: ")
                                    .bold()
                                Spacer()
                                Text("HVL Kunstgressbane")
                            }
                            HStack() {
                                Text("Dato: ")
                                    .bold()
                                Spacer()
                                Text("20.02.2024")
                            }
                            HStack() {
                                Text("Tid: ")
                                    .bold()
                                Spacer()
                                Text("19:00")
                            }
                            HStack() { // Her skal det være en poll
                                Text("Kommer du? ")
                                    .bold()
                                Spacer()
                                Text("Ja")
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
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            
                            Text("Tittel")
                                .font(.title)
                                .bold()
                            
                            HStack() {
                                Text("Sted: ")
                                    .bold()
                                Spacer()
                                Text("HVL Kunstgressbane")
                            }
                            HStack() {
                                Text("Dato: ")
                                    .bold()
                                Spacer()
                                Text("20.02.2024")
                            }
                            HStack() {
                                Text("Tid: ")
                                    .bold()
                                Spacer()
                                Text("19:00")
                            }
                            HStack() { // Her skal det være en poll
                                Text("Kommer du? ")
                                    .bold()
                                Spacer()
                                Text("Ja")
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
                        
                        
                        VStack(alignment: .leading, spacing: 20) {
                            
                            
                            Text("Tittel")
                                .font(.title)
                                .bold()
                            
                            HStack() {
                                Text("Sted: ")
                                    .bold()
                                Spacer()
                                Text("HVL Kunstgressbane")
                            }
                            HStack() {
                                Text("Dato: ")
                                    .bold()
                                Spacer()
                                Text("20.02.2024")
                            }
                            HStack() {
                                Text("Tid: ")
                                    .bold()
                                Spacer()
                                Text("19:00")
                            }
                            HStack() { // Her skal det være en poll
                                Text("Kommer du? ")
                                    .bold()
                                Spacer()
                                Text("Ja")
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
                    }
                }
            }
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
    TrainingView()
}
