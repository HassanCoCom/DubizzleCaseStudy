//
//  SetupViewInteractor.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class SetupViewInteractor {
    
    weak var presenter: SetupViewInteractorOutputProtocol?
}

extension SetupViewInteractor: SetupViewInteractorInputProtocol {
    
    // MARK: Just For Mimicking Ap An API Call Here.
    func getAppMeta() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
            Bootstrapper.startAppAfterSetup()
        })
    }
}
