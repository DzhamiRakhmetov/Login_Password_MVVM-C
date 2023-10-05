//
//  ViewController.swift
//  MVVM Practice
//
//  Created by Dzhami on 05.10.2023.
//

import UIKit

class LoginViewController: UIViewController, Storyboardable {
    
    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        viewModel?.userButtonPressed(login: (loginField.text ?? ""), password: passwordField.text ?? "")
        if viewModel!.isLoggedIn {
            coordinator?.isLoggedIn = viewModel!.isLoggedIn
            coordinator?.showMain(login: loginField.text!)
        }
    }
    
    
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bindViewModel()
        initialState()
    }
    
    func initialState() {
        label.textColor = UIColor.white
        label.text = ""
        
        
    }

    func bindViewModel() {
        viewModel?.statusText.bind { [weak self] statusText in
            DispatchQueue.main.async {
                self?.label.text = statusText
            }
        }
        
        viewModel?.statusColor.bind { [weak self] statusColor in
            DispatchQueue.main.async {
                self?.label.textColor = statusColor
            }
        }
    }

}

