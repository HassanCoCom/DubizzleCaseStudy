//
//  SetupViewPresenter.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class SetupViewPresenter {

    weak private var view: SetupViewViewProtocol?
    var interactor: SetupViewInteractorInputProtocol?
    private let router: SetupViewWireframeProtocol
    
    init(interface: SetupViewViewProtocol,
         interactor: SetupViewInteractorInputProtocol?,
         router: SetupViewWireframeProtocol) {
        self.view = interface
        self.interactor = interactor
        self.router = router
    }

    func viewDidLoad() {
        interactor?.getAppMeta()
    }
}

extension SetupViewPresenter: SetupViewPresenterProtocol {

}

extension SetupViewPresenter: SetupViewInteractorOutputProtocol {

}
