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


        logoImage.backgroundColor = .green

        addSubview(logoImage)


        logoImage.setAnchor(top: self.topAnchor,
                left: nil,
                bottom: nil,
                right: nil,
                paddingTop: 100,
                paddingLeft: 0,
                paddingBottom: 0,
                paddingRight: 0,
                width: 200,
                height: 100)



//        let stackView = createStackView(views: [logoImage,
//                                                getStartedButton,
//                                                notMemberLabel,
//                                                registerButton
//        ])
//        addSubview(stackView)
//        stackView.setAnchor(width: self.frame.width - 60, height: self.frame.height - 60)
//        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }


    let logoImage: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "bus.png")
        iv.contentMode = .scaleAspectFill
        return iv
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
