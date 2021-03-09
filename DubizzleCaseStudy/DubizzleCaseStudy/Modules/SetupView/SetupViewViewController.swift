//
//  SetupViewViewController.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class SetupViewViewController: UIViewController, SetupViewViewProtocol {

	var presenter: SetupViewPresenterProtocol?

	override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
    }
}
