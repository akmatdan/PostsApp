//
//  Model.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import Foundation

struct Post: Codable, Identifiable {
    let id: String = UUID().uuidString
    
    let title: String
    let body: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case title
        case body
    }
}

struct User: Codable, Identifiable {
    let id: String = UUID().uuidString
    
    let name: String
    let username: String
    let email: String
    let phone: String
    
    private enum CodingKeys: String, CodingKey {
        case name
        case username
        case email
        case phone
    }
}

struct Comment: Codable, Identifiable {
    let id: String = UUID().uuidString
    
    let postId: Int
    let name: String
    let email: String
    let body: String
    
    private enum CodingKeys: String, CodingKey {
        case postId
        case name
        case email
        case body
    }
}

