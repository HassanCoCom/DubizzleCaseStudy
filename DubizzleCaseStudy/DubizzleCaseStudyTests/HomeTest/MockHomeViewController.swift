//
//  MockHomeViewController.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
import UIKit
@testable import DubizzleCaseStudy

final class MockHomeViewController: UIViewController, HomeViewProtocol {
    
    var presenter: HomePresenterProtocol?

    func addEmptyView(_ state: EmptyViewState) {
    }
    
    func showError(with message: String) {
    }
    
    func removeEmptyView() {
    }
    
    func reloadView() {
    }
}
