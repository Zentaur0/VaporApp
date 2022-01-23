//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

struct GetGoodByIDResponse: Content {
    var result: Int
    var product_name: String
    var product_price: Int
    var product_description: String
}
