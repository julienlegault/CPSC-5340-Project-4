//
//  ContentView.swift
//  Project4
//
//  Created by Julien on 4/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var user = UserModel(email: "", password: "")
    @EnvironmentObject var userView : UserViewModel
    
    var body: some View {
        if userView.signInState {
            HomepageView()
        } else {
            VStack {
                TextField("Email", text: $user.email)
                SecureField("Password", text: $user.password)
                HStack {
                    Button {
                        userView.createAccount(user: user)
                    } label: {
                        Text("Create Account")
                    }
                    Spacer()
                    Button {
                        userView.login(user: user)
                    } label: {
                        Text("Sign In")
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
