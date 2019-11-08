//
//  LoginView.swift
//  ViewCodeApp
//
//  Created by Jose Javier on 07/11/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import UIKit

protocol LoginViewDelegate: class {
    func userDidInput(phone: String)
    
}

class LoginView: UIView {
    weak var delegate: LoginViewDelegate?
    
    let titleLabel: UILabel = {
        let label = UILabel()
        //label.text = "Vamos começar"
        label.text = Localization.welcomeText
        label.font = UIFont.title
        label.textColor = UIColor.title
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bodyLabel: UILabel = {
        let label = UILabel()
        label.text = "O primeiro passo do cadastro é informar seu número de Whatsapp. \n\nEnviaremos um código pra validar seu número. Ele será seu login no App."
        label.font = .body
        label.textColor = .body
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let phoneInput: UITextField = {
        let textField = UITextField()
        textField.placeholder = Localization.inputPhonePlaceholder
        textField.keyboardType = .phonePad
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitle(Localization.signupButtonTitle, for: .normal)
        button.layer.cornerRadius = 6
        button.backgroundColor = .title
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    init(delegate: LoginViewDelegate){
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Methods
    @objc func userDidInputPhone() {
        guard let phone = phoneInput.text else {return}
        delegate?.userDidInput(phone: phone)
    }
}

extension LoginView: CodeView {
    func setupComponents() {
        addSubview(titleLabel)
        addSubview(bodyLabel)
        addSubview(phoneInput)
        addSubview(button)
    }
    
    func setupConstraints() {
        titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Margin.verticalVeryLarge).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: Margin.horizontal).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -Margin.horizontal).isActive = true
        
        bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Margin.verticalLarge).isActive = true
        bodyLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0).isActive = true
        bodyLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 0).isActive = true
        
        phoneInput.topAnchor.constraint(equalTo: bodyLabel.bottomAnchor, constant: Margin.verticalLarge).isActive = true
        phoneInput.leadingAnchor.constraint(equalTo: bodyLabel.leadingAnchor, constant: 0).isActive = true
        phoneInput.trailingAnchor.constraint(equalTo: bodyLabel.trailingAnchor, constant: 0).isActive = true
        
        button.topAnchor.constraint(equalTo: phoneInput.bottomAnchor, constant: Margin.verticalLarge).isActive = true
        button.leadingAnchor.constraint(equalTo: phoneInput.leadingAnchor, constant: 0).isActive = true
        button.trailingAnchor.constraint(equalTo: bodyLabel.trailingAnchor, constant: 0).isActive = true
    }
    
    func setupExtraConfiguration() {
        backgroundColor = .white
        button.addTarget(self, action: #selector(userDidInputPhone), for: UIControl.Event.touchUpInside)
    }
    
}
