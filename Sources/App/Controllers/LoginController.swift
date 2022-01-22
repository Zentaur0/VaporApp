//
//  File.swift
//  
//
//  Created by Антон Сивцов on 22.01.2022.
//

import Vapor

class LoginController {
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        
        print(body)
        
        let user = User(
            id_user: 1,
            user_login: "marry007",
            user_name: "Marry",
            user_lastname: "Stronghold"
        )
        let response = LoginResponse(result: 1, user: user, auth_token: "some_authorizaion_token")
        
        return req.eventLoop.future(response)
    }
}
