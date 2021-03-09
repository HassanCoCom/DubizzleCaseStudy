//
//  HomeCollectionViewCell.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

struct ItemViewModel {
    let name: String
    var price: String
    var thumbnailsUrl: String
}

class HomeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: ItemViewModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            priceLabel.text = viewModel.price
            titleLabel.text = viewModel.name.capitalized
            ImageManager.shared.setImage(with: viewModel.thumbnailsUrl, imageView: self.thumbnailImageView)
            layoutIfNeeded()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.image = UIImage(named: "placeholder-image")
    }
    
    override func prepareForReuse() {
        thumbnailImageView.image = nil
        thumbnailImageView.image = UIImage(named: "placeholder-image")
        super.prepareForReuse()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        thumbnailImageView.roundCorners(corners: [.topLeft, .topRight], radius: 8.0)
    }
}
