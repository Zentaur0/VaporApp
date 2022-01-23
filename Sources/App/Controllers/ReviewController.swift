//
//  File.swift
//  
//
//  Created by Антон Сивцов on 23.01.2022.
//

import Vapor

class ReviewController {
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = AddReviewResponse(
            result: 1,
            user_message: "Ваш отзыв был передан на модерацию"
        )
        
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let response = RemoveReviewResponse(result: 1)
        return req.eventLoop.future(response)
    }
    
    func getReviews(_ req: Request) throws -> EventLoopFuture<GetReviewsResponse> {
        let response = [
            AddedReview(id: 1, mark: 3, user: "Ron", review: "I would think twice before bying this."),
            AddedReview(id: 2, mark: 4, user: "Karen", review: "Pretty nice, but quallity could be better"),
            AddedReview(id: 3, mark: 5, user: "Lovanda", review: "Realy great product. Recommend it!")
        ]
        
        guard let body = try? req.query.decode(GetReviewsRequest.self) else {
            throw Abort(.badRequest)
        }
        
        let count = body.count ?? response.count
        let resultResponse = Array(response.prefix(count))
        return req.eventLoop.future(resultResponse)
    }
}
