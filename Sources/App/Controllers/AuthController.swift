//
//  File.swift
//  
//
//  Created by Антон Сивцов on 22.01.2022.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let response = RegisterResponse(result: 1, user_message: "Registration successfull", error_message: nil)
        
        return req.eventLoop.future(response)
    }
}
