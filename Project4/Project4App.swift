//
//  Project4App.swift
//  Project4
//
//  Created by Julien on 4/7/24.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}

@main
struct Project4App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userViewModel)
        }
    }
}
