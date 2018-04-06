//
//  WelcomeController.swift
//  enrecovery
//
//  Created by Vinod Kumar on 03/04/2018.
//  Copyright © 2018 Vinod Kumar. All rights reserved.
//

import UIKit


class LoginController: UIViewController {

    var loginView: LoginView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }


    func setupView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView

        loginView.loginAction = loginButtonPressed
        loginView.cancelAction = cancelButtonPressed
        self.view.addSubview(loginView)

        loginView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)


        //loginView.setFullScreen()
    }


//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        //textField code
//        textField.resignFirstResponder()  //if desired
//        performAction()
//        return true
//    }

    func performAction() {
        //action events
    }


    func loginButtonPressed() {
        print("login clicked")


        guard let email = loginView.emailTextField.text else { return }
        guard let password = loginView.passwordTextField.text else { return }
        let urlString = URL(string: "http://localhost:8080/api/user/login")
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error ?? "sss")
                } else {
                    if let usableData = data {
                        print(usableData) //JSONSerialization
                    }
                }
            }
            task.resume()
        }
    }

    func cancelButtonPressed() {
        print("cancel clicked")
        dismiss(animated: true, completion: nil)
    }

}



extension LoginView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == passwordTextField {
            passwordTextField.resignFirstResponder()
            doWhatYouWantTo()
        } else {
            passwordTextField.becomeFirstResponder()
        }
        return false
    }

    
    func doWhatYouWantTo() {

        errorTextField.text = "Invalid username or password!"
        print("button presses.")
        print(passwordTextField.text)
    }
}





