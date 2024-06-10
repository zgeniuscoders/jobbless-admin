//
//  User.swift
//  jobbless admin
//
//  Created by ZGenius on 10/06/2024.
//

import Foundation

class User:Codable{
    
    var id: String
    let name: String
    let email: String
    let bio: String
    let profileImage: String
    let interesrs: [String]
    
}
