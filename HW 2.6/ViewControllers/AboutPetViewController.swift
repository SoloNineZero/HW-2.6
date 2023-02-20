//
//  AboutPetsViewController.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 16.02.2023.
//

import UIKit

class AboutPetViewController: UIViewController {
    
    @IBOutlet var animalImageView: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    var user: User!
    
    private let colorTop =  UIColor(
        red: 172.0/255.0,
        green: 222.0/255.0,
        blue: 231.0/255.0,
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
        
        animalImageView.layer.cornerRadius = 15
        animalImageView.image = UIImage(named: "\(user.animal.photo)")
        
        nameLabel.text = user.animal.name
        ageLabel.text = String(user.animal.age)
    }
}
