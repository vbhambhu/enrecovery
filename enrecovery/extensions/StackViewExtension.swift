//
//  StackViewExtension.swift
//  app
//
//  Created by Vinod Kumar on 24/03/2018.
//  Copyright © 2018 Vinod Kumar. All rights reserved.
//

import UIKit

extension UIView {
    func createStackView(views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 10
        return stackView
    }
}
