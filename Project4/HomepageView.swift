//
//  HomepageView.swift
//  Project4
//
//  Created by Julien on 4/7/24.
//

import SwiftUI

struct HomepageView: View {
    
    @StateObject var userView = UserViewModel()
    
    var body: some View {
        VStack {
            Text("Hello, welcome to my app!")
            Button {
                userView.signOut()
            } label: {
                Text("Sign Out")
            }
        }
    }
}

#Preview {
    HomepageView()
}
