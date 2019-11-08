//
//  LoginViewController.swift
//  ViewCodeApp
//
//  Created by Jose Javier on 07/11/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func loadView() {
        view = LoginView(delegate: self)
    }
    
}

extension LoginViewController: LoginViewDelegate {
    func userDidInput(phone: String) {
        print("O telefone inserido é", phone)
    }
}
