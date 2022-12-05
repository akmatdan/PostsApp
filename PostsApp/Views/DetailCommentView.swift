//
//  DetailCommentView.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct DetailCommentView: View {
    
    var commnetItem: Comment
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack {
                Text("Title")
                    .font(.largeTitle
                            .weight(.bold))
                    .padding()
                Text(commnetItem.name)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                
                Text("Email")
                    .font(.largeTitle
                            .weight(.bold))
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(commnetItem.email)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        .padding()
    }
}
