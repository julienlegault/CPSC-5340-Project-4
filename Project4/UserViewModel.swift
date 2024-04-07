//
//  UserViewModel.swift
//  Project4
//
//  Created by Julien on 4/7/24.
//

import Foundation
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class UserViewModel: ObservableObject {
    
    @Published var signInState = false
    
    func login(user: UserModel) {
        Auth.auth().signIn(withEmail: user.email, password: user.password) { [weak self] authResult, error in
            guard let strongSelf = self else { return }
            if let error = error {
                print("Error signing in user: \(error)")
            } else {
                print("User signed in successfully")
                strongSelf.signInState = true
            }
        }
    }
    
    func createAccount(user: UserModel) {
        Auth.auth().createUser(withEmail: user.email, password: user.password) { authResult, error in
            if let error = error {
                print("Error creating user: \(error)")
            } else {
                print("User signed up successfully")
                self.signInState = true
            }
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            self.signInState = false
            print(self.signInState)
        } catch let signOutError as NSError {
            print("Error signing out: \(signOutError)")
        }
    }
}
