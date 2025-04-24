//
//  ToDoFirebaseApp.swift
//  ToDoFirebase
//
//  Created by mac on 07.04.2025.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoFirebaseApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
