//
//  CommentList.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct CommentList: View {
    
    @State var comments: [Comment] = []
    
    var body: some View {
        NavigationView {
            List(comments) { comment in
                NavigationLink(destination: DetailCommentView(commnetItem: comment)) {
                    HStack {
                        Text(comment.name)
                            .font(.headline)
                    }.padding(7)
                }
            }
            .navigationBarTitle("Comments list")
            .onAppear {
                apiCall().getComments { (comments) in
                    self.comments = comments
                }
            }
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentList()
    }
}
