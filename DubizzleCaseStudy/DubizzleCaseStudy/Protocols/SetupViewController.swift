//
//  SetupViewController.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation

protocol SetupViewController {
    func setupNavigation()
    func setupView()
    func networkRequest()
}

protocol SetupCell {
    func configureCell<T>(object: T)
}

protocol SetupHeader {
    func configuereHeader<T>(object: T, title: String?)
    func setupView()
}
