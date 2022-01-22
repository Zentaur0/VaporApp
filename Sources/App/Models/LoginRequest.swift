//
//  File.swift
//  
//
//  Created by Антон Сивцов on 22.01.2022.
//

import Vapor

struct LoginRequest: Content {
    var login: String
    var password: String
    var app_token: String
}
