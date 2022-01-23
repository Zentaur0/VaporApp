//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

struct AddReviewResponse: Content {
    var result: Int
    var user_message: String
}
