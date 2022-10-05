//
//  File.swift
//  Bridge
//
//  Created by Consultant on 10/5/22.
//

import Foundation
import FirebaseFirestore

class userViewModel: ObservableObject {
    
    @Published var users = [User]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("users").addSnapshotListener { querySnapshot, error in
            guard let documents = querySnapshot?.documents else {
                print("No Documents")
                return
            }
            
            self.users = documents.map({ queryDocumentsSnapshot -> User in
                let data = queryDocumentsSnapshot.data()
                let name = data["name"] as? String ?? ""
                let surname = data["surname"] as? String ?? ""
                return User(name: name, surname: surname)
            })
        }
    }
}
