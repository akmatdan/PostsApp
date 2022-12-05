//
//  PostList.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct PostList: View {
    
    @State var posts: [Post] = []
    
    var body: some View {
        NavigationView {
            List(posts) { post in
                NavigationLink(destination: DetailPostView(postItem: post)) {
                    HStack {
                        Text(post.title)
                            .font(.headline)
                    }.padding(7)
                }
            }
            .navigationBarTitle("Posts list")
            .onAppear {
                apiCall().getPosts { (posts) in
                    self.posts = posts
                }
            }
        }
    }
}
