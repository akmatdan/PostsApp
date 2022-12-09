//
//  PostList.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 9/12/22.
//

import Foundation
import RealmSwift

class PostListData: Object, Identifiable {
    
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var title: String
    
    
    
    
    override class func primaryKey() -> String? {
        "id"
    }
}
