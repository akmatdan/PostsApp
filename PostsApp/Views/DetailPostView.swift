//
//  DetailPostView.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct DetailPostView: View {
    
    let postItem: Post
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Title")
                    .font(.largeTitle
                            .weight(.bold))
                    .padding()
                Text(postItem.title)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                
                Text("Description")
                    .font(.largeTitle
                            .weight(.bold))
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(postItem.body)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        .padding()
    }
}

