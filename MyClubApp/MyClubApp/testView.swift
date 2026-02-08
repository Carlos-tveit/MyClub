import SwiftUI
import FirebaseFirestore // This is the specific tool for the database

struct testView: View {
    var body: some View {
        VStack {
            Button("Save First Player") {
                let db = Firestore.firestore()
                
                // This creates a folder called "players" in the cloud
                db.collection("players").addDocument(data: [
                    "name": "Erling Haaland",
                    "team": "MyClub"
                ]) { error in
                    if let error = error {
                        print("Error saving: \(error.localizedDescription)")
                    } else {
                        print("Success! Check your Firebase browser tab.")
                    }
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
        }
    }
}
