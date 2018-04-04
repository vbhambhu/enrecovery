//
// Created by Vinod Kumar on 03/04/2018.
// Copyright (c) 2018 ___FULLUSERNAME___. All rights reserved.
//

import UIKit

class LoginView: UIView {

    var loginAction: (() -> Void)?
    var cancelAction: (() -> Void)?

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    func setup() {

        backgroundColor = .white


//        addSubview(logoImage)
//        logoImage.setCenterAndTopPaddingFrom(width: 195, height: 33, topPadding: 100)


        let stackView = createStackView(views: [emailTextField,
                                                passwordTextField,
                                                submitButton,
                                                cancelButton
        ])

        addSubview(stackView)



        stackView.setAnchor(width: self.frame.width - 60, height: 205)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }


    let logoImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo.png")
        return iv
    }()


    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()

    let passwordTextField: UITextField = {
        let tf = UITextField(placeHolder: "Password")
        return tf
    }()

    let submitButton: UIButton = {
        let button = UIButton(title: "Submit", borderColor: .greenBorderColor)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()

    let cancelButton: UIButton = {
        let button = UIButton(title: "Cancel", borderColor: .redBorderColor)
        button.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        return button
    }()


    @objc func handleLogin() {
        loginAction?()
    }

    @objc func handleCancel() {
        cancelAction?()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
