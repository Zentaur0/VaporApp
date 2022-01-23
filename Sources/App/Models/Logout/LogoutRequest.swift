//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

struct LogoutRequest: Content {
    var login: String
    var app_token: String
}
