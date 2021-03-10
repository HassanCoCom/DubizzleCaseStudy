//
//  MockHomeInteractor.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
@testable import DubizzleCaseStudy

final class MockHomeInteractor: HomeInteractorInputProtocol {
    
    weak var presenter: HomeInteractorOutputProtocol?
    
    func getItemsFromServer() {
        if let url = Bundle.main.url(forResource: "items", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode([Items].self, from: data)
                presenter?.itemsFetchedSucessfully(jsonData)
            } catch {
                print("error:\(error)")
                fatalError()
            }
        }
    }
}
