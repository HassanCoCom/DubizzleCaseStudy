//
//  UIStoryboard.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
import UIKit

extension UIStoryboard {

    func instantiateViewController<T: UIViewController>(ofType _: T.Type,
                                                        withIdentifier identifier: String? = nil) -> T {
        let identifier = identifier ?? String(describing: T.self)
        guard let controller = instantiateViewController(withIdentifier: identifier) as? T else {
            assertionFailure("instantiateNavigationController controller unwrapped failed")
            fatalError()
        }
        return controller
    }
}
