//
//  UILabelExtension.swift
//  app
//
//  Created by Vinod Kumar on 25/03/2018.
//  Copyright © 2018 Vinod Kumar. All rights reserved.
//
import UIKit

extension UILabel {
    
    public convenience init(text: String) {
        self.init()
        self.textAlignment = .center
        self.text = text
        self.textColor = .black
    }
    
    
}
