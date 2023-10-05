//
//  DetailViewController.swift
//  Login_Password_MVVM
//
//  Created by Dzhami on 05.10.2023.
//

import UIKit

class DetailViewController: UIViewController, Storyboardable {
    
    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        print("DetailVC loaded")
        updateUI()
    }
    
    func updateUI() {
        nameLabel.text = viewModel?.model?.name
        cityLabel.text = viewModel?.model?.city
        emailLabel.text = viewModel?.model?.email
        phoneLabel.text = viewModel?.model?.phone
    }
}
