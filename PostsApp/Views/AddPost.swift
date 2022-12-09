//
//  AddPost.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 9/12/22.
//

import SwiftUI
import RealmSwift

struct AddPost: View {
    
    @State private var title: String = ""
    @State private var description: String = ""
    
    @Environment(\.dismiss) private var dismiss
    
    @ObservedResults(PostListData.self) var postLists
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter title", text: $title)
                TextField("Enter description", text: $description)
                
                Button {
                    // post list record
                    let postList = PostListData()
                    postList.title = title
                     
                    
                    $postLists.append(postList)
                    
                    dismiss()
                } label: {
                    Text("Save")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.bordered)
            }
            .navigationTitle("New Post")
        }
    }
}

struct AddPost_Previews: PreviewProvider {
    static var previews: some View {
        AddPost()
    }
}
