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
        red: 255.0/255.0,
        green: 219.0/255.0,
        blue: 203.0/255.0,
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
        photoImageView.image = UIImage(named: "\(user.person.photo)")
        
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        dateOfBirth.text = user.person.dateOfBirth
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let aboutPetVC = segue.destination as? AboutPetViewController else { return }
        aboutPetVC.user = user
    }
}
