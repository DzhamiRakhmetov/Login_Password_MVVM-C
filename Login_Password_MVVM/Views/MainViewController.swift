//
//  MainViewController.swift
//  Login_Password_MVVM
//
//  Created by Dzhami on 05.10.2023.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBAction func aboutButtonPressed(_ sender: Any) {
        coordinator?.showDetail()
    }
    
    
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?
    
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
        print("Main screen loaded")
        mainLabel.text = "Hello \(viewModel?.login ?? "Default")"
    }
}
