//
//  ViewController.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
    }

    // Переход на второй экран
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        let tabBarController = segue.destination as! UITabBarController
        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
        let aboutMeVC = navigationVC.topViewController as! AboutMeViewController
        welcomeVC.user = user
        aboutMeVC.user = user
    }
//    
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let tabBarController = segue.destination as! UITabBarController
//        let welcomeVC = tabBarController.viewControllers?.first as! WelcomeViewController
//        let navigationVC = tabBarController.viewControllers?.last as! UINavigationController
//        let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
//        welcomeVC.user = user
//        aboutUserVC.user = user
//    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInAction() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            passwordTF.text = nil
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Oops!", andMessage: "Your login is \(user.login) 😀")
        : showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password) 😀")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    
    // Алёрт
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
