import Vapor

func routes(_ app: Application) throws {
    let auth = AuthController()
    app.post("register", use: auth.register)
    
    let login = LoginController()
    app.post("login", use: login.login)
    
    let logout = LogoutController()
    app.post("logout", use: logout.logout)
    
    let dataChange = DataChangeController()
    app.post("change_data", use: dataChange.changeData)
    
    let catalogData = CatalogDataController()
    app.get("get_catalog", use: catalogData.getCatalog)
    
    let getGood = GetGoodByIDController()
    app.post("good", use: getGood.getGood)
    
    let review = ReviewController()
    app.post("add_review", use: review.addReview)
    app.post("remove_review", use: review.removeReview)
    app.get("all_reviews", use: review.getReviews)
    
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
