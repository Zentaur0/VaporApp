//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

class GetGoodByIDController {
    func getGood(_ req: Request) throws -> EventLoopFuture<GetGoodByIDResponse> {
        guard let body = try? req.content.decode(GetGoodByIDRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = GetGoodByIDResponse(
            result: 1,
            product_name: "Ноутбук",
            product_price: 45600,
            product_description: "Мощный игровой ноутбук"
        )
        
        return req.eventLoop.future(response)
    }
}
