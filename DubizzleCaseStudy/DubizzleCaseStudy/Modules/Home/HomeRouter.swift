//
//  HomeRouter.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class HomeRouter {

    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {

        let storyboard = getStoryBoard(.main)
        let view = storyboard.instantiateViewController(ofType: HomeViewController.self)
        
        let interactor = HomeInteractor()
        let router = HomeRouter()
        let presenter = HomePresenter(interface: view, interactor: interactor, router: router)

        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}

extension HomeRouter: HomeWireframeProtocol {

    func openItemDetails(with ofItem: Items) {
        let controller = DetailsRouter.createModule(withDetails: ofItem)
        self.viewController?.navigationController?.pushViewController(controller, animated: true)
    }
}
