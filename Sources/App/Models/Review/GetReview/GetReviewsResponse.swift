//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

typealias GetReviewsResponse = [AddedReview]

struct AddedReview: Content {
    var id: Int
    var mark: Int
    var user: String
    var review: String
}
