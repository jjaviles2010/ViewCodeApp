//
//  CodeView.swift
//  ViewCodeApp
//
//  Created by Jose Javier on 07/11/19.
//  Copyright © 2019 JLApps. All rights reserved.
//

import Foundation

protocol CodeView {
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
    func setup()
}

extension CodeView {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
}
