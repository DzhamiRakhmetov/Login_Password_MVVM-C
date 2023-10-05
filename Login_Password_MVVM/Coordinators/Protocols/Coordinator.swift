//
//  Coordinator.swift
//  Login_Password_MVVM
//
//  Created by Dzhami on 05.10.2023.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
