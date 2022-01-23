//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

struct AddReviewRequest: Content {
    var good_id: Int
    var mark: Int
    var review: String
}
