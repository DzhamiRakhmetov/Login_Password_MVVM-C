//
//  ViewModel.swift
//  MVVM Practice
//
//  Created by Dzhami on 05.10.2023.
//

import Foundation
import UIKit.UIColor

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    
    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login Failure"
            statusColor.value = UIColor.red
        } else {
            statusText.value = "Success"
            statusColor.value = UIColor.green
        }
    }
}

