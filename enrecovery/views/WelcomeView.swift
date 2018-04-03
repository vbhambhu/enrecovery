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

        notMemberLabel.backgroundColor = .green

        let stackView = createStackView(views: [logoImage,
                                                getStartedButton,
                                                notMemberLabel,
                                                registerButton
        ])
        addSubview(stackView)
        stackView.setAnchor(width: self.frame.width - 60, height: self.frame.height - 60)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }


    let logoImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "bus.png")
        iv.contentMode = .scaleAspectFill
        return iv
    }()


    let getStartedButton: UIButton = {
        let button = UIButton(title: "Login", borderColor: .greenBorderColor)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()

    let notMemberLabel: UILabel = {
        let tl = UILabel(text: "Not a member?")
        return tl
    }()

    let registerButton: UIButton = {
        let button = UIButton(title: "Sign Up", borderColor: .redBorderColor)
        button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        return button
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
