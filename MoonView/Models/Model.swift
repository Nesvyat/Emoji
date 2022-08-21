//
//  Model.swift
//  Emoji
//
//  Created by MacBook Pro on 21.08.2022.
//

struct User {
    let name: String
    let surname: String
    let age: Int
    
    var fullName: String {
        "\(name) \(surname)"
}
    var fullInfo: String {
        "\(name) \(surname) \(age)"
    }

static func returningModel() -> User {
    User(name: "Svyat", surname: "Nesterov", age: 35)
}
    
  
}

