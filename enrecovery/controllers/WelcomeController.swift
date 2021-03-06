//
//  WelcomeController.swift
//  enrecovery
//
//  Created by Vinod Kumar on 03/04/2018.
//  Copyright © 2018 Vinod Kumar. All rights reserved.
//

import UIKit


class WelcomeController: UIViewController {

    var welcomeView: WelcomeView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }


    func setupView() {
        let mainView = WelcomeView(frame: self.view.frame)
        self.welcomeView = mainView
        self.view.addSubview(welcomeView)

        welcomeView.loginAction = loginButtonPressed
        welcomeView.registerAction = registerButtonPressed

        welcomeView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)

    }

    func loginButtonPressed() {
        print("login clicked")
        let loginVC = LoginController()
        present(loginVC, animated: true, completion: nil)
    }

    func registerButtonPressed() {
        UIApplication.shared.open(URL(string : "http://app.enrecover.co.uk/register")!, options: [:], completionHandler: { (status) in
        })
    }



}
