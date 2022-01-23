//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

typealias CatalogResponse = [CatalogItem]

struct CatalogItem: Content {
    var id_product: Int
    var product_name: String
    var price: Int
}
