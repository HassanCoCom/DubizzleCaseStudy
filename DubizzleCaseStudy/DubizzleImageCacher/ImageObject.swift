//
//  ImageObject.swift
//  DubizzleImageCacher
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
import UIKit

class ImageObject: NSObject, NSDiscardableContent {
    
    var image: UIImage!
    
    func beginContentAccess() -> Bool {
        return true
    }
    
    func endContentAccess() {
        
    }
    
    func discardContentIfPossible() {
        
    }
    
    func isContentDiscarded() -> Bool {
        return false
    }
}
