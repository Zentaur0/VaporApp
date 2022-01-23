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

//[
//  {
//    "id_product": 123,
//    "product_name": "Ноутбук",
//    "price": 45600
//  },
//  {
//    "id_product": 456,
//    "product_name": "Мышка",
//    "price": 1000
//  }
//]
