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
    
    private var userName = "Igor"
    private var password = "12345"
    
    
    @IBAction func forgotUserNameAction() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your name is \(userName) 😀"
        )
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(
            withTitle: "Oops!",
            andMessage: "Your password is \(password) 😀"
        )
    }
    
    @IBAction func logInAction() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password"
            )
            passwordTF.text = nil
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = nil
        passwordTF.text = nil
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // Переход на второй экран
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text ?? ""
    }
    
}

// Алёрт
extension LoginViewController {
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
