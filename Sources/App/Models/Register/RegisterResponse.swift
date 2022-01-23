//
//  File.swift
//  
//
//  Created by Антон Сивцов on 22.01.2022.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
