//
//  UserData.swift
//  Login_Password_MVVM
//
//  Created by Dzhami on 05.10.2023.
//

import Foundation

struct UserData {
    var name: String
    var city: String
    var email: String
    var phone: String
}

extension UserData {
    static var userData = UserData(
        name: "Alex",
        city: "Moscow",
        email: "test@mail.com",
        phone: "+7(999)8887766")
}
