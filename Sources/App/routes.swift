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
    
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
}
