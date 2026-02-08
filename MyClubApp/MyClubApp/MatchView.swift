//
//  MatchView.swift
//  MyClubApp
//
//  Created by Carlos Diaz Tveit on 08/02/2026.
//

import SwiftUI

struct MatchView: View {
    
    @State var tall = 0
    var navn = "Carlos"
    
    
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
                            .foregroundStyle(.white)
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
                            .foregroundStyle(.green)
                    }
                    Spacer()
                }
                
                
                
                VStack(alignment: .leading, spacing: 20) {
                    
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
                        
                        Button("Knapp") {
                            print("Trykket")
                        }
                        Image(systemName: "soccerball.inverse")
                        Text(navn)
                        Text(String(tall))
                        Spacer()
                        Text("Ha det gøy")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                    
                    
                    Text("Trening!")
                    
                }
                .padding()
                .background() {
                    Rectangle()
                        .foregroundStyle(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(radius: 15)
                }
                .padding()
                
                VStack(alignment: .leading, spacing: 20) {
                    
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
                        
                        Button("Knapp") {
                            print("Trykket")
                        }
                        Image(systemName: "soccerball.inverse")
                        Text(navn)
                        Text(String(tall))
                        Spacer()
                        Text("Ha det gøy")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                    
                    
                    Text("Trening!")
                    
                }
                .padding()
                .background() {
                    Rectangle()
                        .foregroundStyle(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                        .shadow(radius: 15)
                }
                .padding()
                Spacer()
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
    MatchView()
}
