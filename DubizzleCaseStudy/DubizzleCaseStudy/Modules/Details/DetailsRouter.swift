//
//  DetailsRouter.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class DetailsRouter {

    weak var viewController: UIViewController?

    static func createModule(withDetails: Items) -> UIViewController {

        let storyboard = getStoryBoard(.main)
        let view = storyboard.instantiateViewController(ofType: DetailsViewController.self)
        
        let interactor = DetailsInteractor()
        let router = DetailsRouter()
        let presenter = DetailsPresenter(interface: view, interactor: interactor, router: router, details: withDetails)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}

extension DetailsRouter: DetailsWireframeProtocol {

}
