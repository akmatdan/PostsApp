//
//  MainView.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
            PostList()
                .tabItem {
                    Label("Posts", systemImage: "list.dash")
                }
            UserList()
                .tabItem {
                    Label("Users", systemImage: "person.2.fill")
                }
            CommentList()
                .tabItem {
                    Label("Comments", systemImage: "list.dash")
                }
            AddedPosts()
                .tabItem {
                    Label("Added", systemImage: "plus")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
