//
//  DetailsPresenter.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class DetailsPresenter {

    weak private var view: DetailsViewProtocol?
    var interactor: DetailsInteractorInputProtocol?
    private let router: DetailsWireframeProtocol
    
    var itemeDetails: Items

    init(interface: DetailsViewProtocol,
         interactor: DetailsInteractorInputProtocol?,
         router: DetailsWireframeProtocol,
         details: Items) {
        self.view = interface
        self.interactor = interactor
        self.router = router
        self.itemeDetails = details
    }
}

extension DetailsPresenter: DetailsPresenterProtocol {

}

extension DetailsPresenter: DetailsInteractorOutputProtocol {

}
