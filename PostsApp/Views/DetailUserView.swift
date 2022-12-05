//
//  DetailUserView.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct DetailUserView: View {
    
    let userItem: User
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Text("User name")
                    .font(.largeTitle
                            .weight(.bold))
                    .padding()
                Text(userItem.username)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                Text("Email")
                    .font(.largeTitle
                            .weight(.bold))
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(userItem.email)
                    .font(.title3)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }
        .padding()
    }
}
