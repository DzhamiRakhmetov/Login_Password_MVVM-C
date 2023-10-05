//
//  Storyboardable.swift
//  Login_Password_MVVM
//
//  Created by Dzhami on 05.10.2023.
//

import UIKit

protocol Storyboardable {
    static func createObject() -> Self
}

extension Storyboardable where Self: UIViewController {
    static func createObject() -> Self {
        let id = String(describing: self)
        let stotyboard = UIStoryboard(name: "Main", bundle: nil)
        return stotyboard.instantiateViewController(identifier: id) as! Self 
    }
}
