//
//  VIewModel.swift
//  PostsApp
//
//  Created by Daniil Akmatov on 5/12/22.
//

import Foundation
class apiCall {
    
    let baseURL = "https://jsonplaceholder.typicode.com/"
    
    func getPosts(completion: @escaping ([Post]) -> ()) {
        
        let jsonUrl = "\(baseURL)posts"
        
        guard let url = URL(string: jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
    
    func getUsers(completion: @escaping ([User]) -> ()) {
        
        let jsonUrl = "\(baseURL)users"
        
        guard let url = URL(string: jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let users = try! JSONDecoder().decode([User].self, from: data!)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
    
    func getComments(completion: @escaping ([Comment]) -> ()) {
        
        let jsonUrl = "\(baseURL)comments"
        
        guard let url = URL(string: jsonUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            let comments = try! JSONDecoder().decode([Comment].self, from: data!)
            
            DispatchQueue.main.async {
                completion(comments)
            }
        }
        .resume()
    }
}
