//
//  SetupViewProtocols.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation

// MARK: Wireframe -
protocol SetupViewWireframeProtocol: class {

}
// MARK: Presenter -
protocol SetupViewPresenterProtocol: class {

    var interactor: SetupViewInteractorInputProtocol? { get set }

    func viewDidLoad()
}

// MARK: Interactor -
protocol SetupViewInteractorOutputProtocol: class {

    /* Interactor -> Presenter */
}

protocol SetupViewInteractorInputProtocol: class {

    var presenter: SetupViewInteractorOutputProtocol? { get set }

    /* Presenter -> Interactor */
    func getAppMeta()
}

// MARK: View -
protocol SetupViewViewProtocol: class {

    var presenter: SetupViewPresenterProtocol? { get set }

    /* Presenter -> ViewController */
}
