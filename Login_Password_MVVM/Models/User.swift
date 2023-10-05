//
//  User.swift
//  MVVM Practice
//
//  Created by Dzhami on 05.10.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
}

extension User {
    static var logins = [
    User(login: "qwerty", password: "12345")
    ]
}
