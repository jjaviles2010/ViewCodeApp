//
//  AppStyle.swift
//  ViewCodeApp
//
//  Created by Jose Javier on 07/11/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

extension UIColor {
    static let cerise = UIColor(r: 234, g: 44, b: 127)
    static let greyishBrown = UIColor(r: 76, g: 76, b: 76)
    
    static let title = UIColor.cerise
    static let body = UIColor.greyishBrown
}

extension UIFont {
    static let title = UIFont.boldSystemFont(ofSize: 28)
    static let body = UIFont.boldSystemFont(ofSize: 15)
}

enum Margin {
    static let horizontal: CGFloat = 24
    static let verticalSmall: CGFloat = 8
    static let verticalNormal: CGFloat = 16
    static let verticalLarge: CGFloat = 24
    static let verticalVeryLarge: CGFloat = 72
}
