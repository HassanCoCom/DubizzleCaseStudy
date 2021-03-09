//
//  DetailsViewController+TableView.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import Foundation
import UIKit

extension DetailsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(with: ItemImagesTableViewCell.self, for: indexPath)
            // MARK: Code To Test Slider
            /*var images: [String]? = [String]()
             images?.append(contentsOf: self.presenter?.itemeDetails.imageUrls ?? [])
             images?.append(contentsOf: self.presenter?.itemeDetails.imageUrls ?? [])
             images?.append(contentsOf: self.presenter?.itemeDetails.imageUrls ?? [])
             cell.images = images ?? []*/
            cell.images = self.presenter?.itemeDetails.imageUrls ?? []
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(with: DetailsTableViewCell.self, for: indexPath)
            cell.priceLable.text = presenter?.itemeDetails.price
            cell.titleLable.text = presenter?.itemeDetails.name?.capitalized
            cell.layoutIfNeeded()
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 350
        default:
            return UITableView.automaticDimension
        }
    }
}

extension DetailsViewController: UITableViewDelegate {
    
}
