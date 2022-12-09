//
//  AddedPosts.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 9/12/22.
//

import SwiftUI
import RealmSwift

struct AddedPosts: View {
    
    @ObservedResults(PostListData.self) var postLists
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                if postLists.isEmpty {
                    Text("Seems no posts. Try to add!")
                }
                List {
                    ForEach(postLists, id: \.id) { postlist in
                        Text(postlist.title)
                    }
                }
                .navigationBarTitle("Added posts")
            }
            .sheet(isPresented: $isPresented, content: {
                AddPost()
            })
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented = true
                    } label : {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct AddedPosts_Previews: PreviewProvider {
    static var previews: some View {
        AddedPosts()
    }
}
