//
//  File.swift
//  
//
//  Created by Антон Сивцов on 22.01.2022.
//

import Vapor

struct LoginResponse: Content {
    var result: Int
    var user: User
    var auth_token: String
}

struct User: Content {
    var id_user: Int
    var user_login: String
    var user_name: String
    var user_lastname: String
}
