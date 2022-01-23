//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

struct RemoveReviewRequest: Content {
    var review_id: Int
}
