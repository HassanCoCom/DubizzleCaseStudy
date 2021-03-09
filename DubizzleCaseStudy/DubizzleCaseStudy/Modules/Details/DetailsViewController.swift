//
//  DetailsViewController.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

class DetailsViewController: UIViewController {

	var presenter: DetailsPresenterProtocol?
    @IBOutlet weak var detailsTableView: UITableView!

	override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        networkRequest()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigation()
    }
}

extension DetailsViewController: DetailsViewProtocol {
}

extension DetailsViewController: SetupViewController {
    
    func setupNavigation() {
        self.navigationController?.navigationBar.isHidden = false
        self.title = presenter?.itemeDetails.name?.capitalized ?? ""
    }
    
    func setupView() {
        detailsTableView.estimatedRowHeight = 100
        detailsTableView.rowHeight = 100
        detailsTableView.delegate = self
        detailsTableView.dataSource = self
        detailsTableView.register(cellType: ItemImagesTableViewCell.self)
        detailsTableView.register(cellType: DetailsTableViewCell.self)
        detailsTableView.tableFooterView = UIView()
    }
    
    func networkRequest() {
    }
}
