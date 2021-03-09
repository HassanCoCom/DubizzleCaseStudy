//
//  HomeInteractor.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class HomeInteractor {
    
    weak var presenter: HomeInteractorOutputProtocol?
}

extension HomeInteractor: HomeInteractorInputProtocol {
    
    func getItemsFromServer() {
        let apiRequest = ApiManager<[Items]>(successHandler: { (data: [Items]) -> Void in
            self.presenter?.itemsFetchedSucessfully(data)
        }, errorHandler: { (_, message, _)  in
            // MARK: Server error is shown if received, otherwise generic error appears on screen.
            message != nil ? self.presenter?.showError(with: message!) : self.presenter?.failedFetchingData()
        })
        apiRequest.makeNetworkCall(endPointUrl: NetworkUrls.itemsUrls, requestType: .get)
    }
}
