//
//  UserList.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import SwiftUI

struct UserList: View {
    
    @State var users: [User] = []
    
    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink(destination: DetailUserView(userItem: user)) {
                    HStack {
                        Text(user.username)
                            .font(.headline)
                    }.padding(7)
                }
            }
            .navigationBarTitle("Users list")
            .onAppear {
                apiCall().getUsers { (users) in
                    self.users = users
                }
            }
        }
    }
}

struct UserList_Previews: PreviewProvider {
    static var previews: some View {
        UserList()
    }
}
