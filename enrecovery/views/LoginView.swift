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

       // liveChatMessage.returnKeyType = .Send

        backgroundColor = .white

        addSubview(cancelButton)
        cancelButton.setAnchor(width: 80, height: 100)



//        addSubview(logoImage)
//        logoImage.setCenterAndTopPaddingFrom(width: 195, height: 33, topPadding: 100)


        let stackView = createStackView(views: [errorTextField,
                                                emailTextField,
                                                passwordTextField])

        addSubview(stackView)


        emailTextField.delegate = self
        passwordTextField.delegate = self

        stackView.setAnchor(width: self.frame.width - 60, height: 140)
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }


    let logoImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "logo.png")
        return iv
    }()


    let errorTextField: UITextField = {
        let tf = UITextField(placeHolder: "")
        tf.isUserInteractionEnabled = false
        tf.backgroundColor = .white
        tf.textAlignment = .center
        tf.textColor = .red
        return tf
    }()




    let emailTextField: UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()

    let passwordTextField: UITextField = {
        let tf = UITextField(placeHolder: "Password")
        tf.isSecureTextEntry = true
        tf.returnKeyType = UIReturnKeyType.send
       // tf.delegate = self
        return tf
    }()

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == passwordTextField {
            textField.resignFirstResponder()
            print("ddddd")
            return false
        }
        return true
    }
//
//    func performAction() {
//        //action events
//    }
//    let submitButton: UIButton = {
//        let button = UIButton(title: "Submit", borderColor: .greenBorderColor)
//        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
//        return button
//    }()

    let cancelButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "close.png") as UIImage?
        button.setImage(image, for: .normal)
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


