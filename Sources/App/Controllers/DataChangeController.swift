//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

class DataChangeController {
    func changeData(_ req: Request) throws -> EventLoopFuture<DataChangeResponse> {
        guard let body = try? req.content.decode(DataChangeRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = DataChangeResponse(result: 1)
        return req.eventLoop.future(response)
    }
}
