//
//  AboutMeViewController.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 16.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var dateOfBirth: UILabel!
    
    var user: User!
    
    private let colorTop =  UIColor(
        red: 140.0/255.0,
        green: 160.0/255.0,
        blue: 230.0/255.0,
        alpha: 1
    )
    private let colorBottom = UIColor(
        red: 220.0/255.0,
        green: 120.0/255.0,
        blue: 150.0/255.0,
        alpha: 1.0
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient(colorTop: colorTop, colorBottom: colorBottom)
        
        photoImageView.layer.cornerRadius = 15
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        dateOfBirth.text = user.person.dateOfBirth
    }
}
