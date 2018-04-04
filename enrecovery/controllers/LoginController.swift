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


    func loginButtonPressed() {
        print("login clicked")
    //        let loginVC = LoginController()
    //        present(loginVC, animated: true, completion: nil)
    }

    func cancelButtonPressed() {
        print("cancel clicked")
        dismiss(animated: true, completion: nil)
    }

}
