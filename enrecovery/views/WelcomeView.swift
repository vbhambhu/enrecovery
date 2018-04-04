//
// Created by Vinod Kumar on 03/04/2018.
// Copyright (c) 2018 ___FULLUSERNAME___. All rights reserved.
//

import UIKit

class WelcomeView: UIView {

    var loginAction: (() -> Void)?
    var registerAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    func setup() {
        backgroundColor = .white
        addSubview(logoImage)
        logoImage.setCenterAndTopPaddingFrom(width: 195, height: 33, topPadding: 100)

        let stackView = createStackView(views: [loginButton,
                                                notMemberLabel,
                                                registerButton
        ])
        addSubview(stackView)



        stackView.setAnchor(width: self.frame.width - 60, height: 150)
       // stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50).isActive = true

    }


    let logoImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo.png")
        return iv
    }()


    let loginButton: UIButton = {
        let button = UIButton(title: "Get Started", borderColor: .greenBorderColor)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()

    let registerButton: UIButton = {
        let button = UIButton(title: "Click here to register", borderColor: .redBorderColor)
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return button
    }()

    let notMemberLabel: UILabel = {
        let tl = UILabel(text: "Don't have details?")
        return tl
    }()



    @objc func handleLogin() {
        loginAction?()
    }

    @objc func handleRegister() {
        registerAction?()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
