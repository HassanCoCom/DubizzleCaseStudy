//
//  ImageManager.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
import UIKit
import BayutDubizzleImageCacher

class ImageManager {
    
    static var shared = ImageManager()
    
    static let imageCacher = ImageCacher()
    
    func setImage(with url: String, imageView: UIImageView) {
        ImageManager.imageCacher.downloadAndShowImage(from: url, on: imageView)
    }
}
