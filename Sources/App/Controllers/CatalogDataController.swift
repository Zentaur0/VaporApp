//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

class CatalogDataController {
    func getCatalog(_ req: Request) throws -> EventLoopFuture<CatalogResponse> {
        let response = [
            CatalogItem(id_product: 123, product_name: "Ноутбук", price: 45600),
            CatalogItem(id_product: 456, product_name: "Мышка", price: 1000)
        ]
        
        guard let body = try? req.query.decode(CatalogRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let count = body.count ?? response.count
        let resultResponse = Array(response.prefix(count))
        return req.eventLoop.future(resultResponse)
    }
}
