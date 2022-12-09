//
//  PostsAppApp.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

@main
struct PostsAppApp: App {
    var body: some Scene {
        WindowGroup {
            let _ = UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
            let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
            MainView()
        }
    }
}
