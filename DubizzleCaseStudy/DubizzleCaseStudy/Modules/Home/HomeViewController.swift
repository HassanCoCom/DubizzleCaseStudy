//
//  HomeViewController.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // MARK: - Public properties -
    var presenter: HomePresenterProtocol?
    
    // MARK: - IBOutlets -
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Class properties -
    private let refreshControl = UIRefreshControl()
    
    // MARK: - Lifecycle -
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

// MARK: - Extensions -
extension HomeViewController {
    
    private func setupRefreshControl() {
        refreshControl.addTarget(self, action: #selector(refreshAndGetData), for: .valueChanged)
        refreshControl.tintColor = .darkGray
        collectionView.alwaysBounceVertical = true
        collectionView.refreshControl = refreshControl
    }
    
    @objc private func refreshAndGetData() {
        removeEmptyView()
        collectionView.refreshControl?.beginRefreshing()
        presenter?.getData()
    }
}

extension HomeViewController: HomeViewProtocol {
    
    func reloadView() {
        self.collectionView.refreshControl?.endRefreshing()
        self.collectionView.reloadData()
    }
    
    func addEmptyView(_ state: EmptyViewState) {
        EmptyView.addEmptyView(in: self.collectionView, state: state)
    }
    
    func showError(with message: String) {
        EmptyView.addEmptyView(in: self.collectionView, state: .error, errorMessage: message)
    }
    
    func removeEmptyView() {
        EmptyView.removeEmptyView(from: self.collectionView)
    }
}

extension HomeViewController: SetupViewController {
    
    func setupNavigation() {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    func setupView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(cellType: HomeCollectionViewCell.self)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.minimumLineSpacing = 6
        flowLayout.minimumInteritemSpacing = 6
        flowLayout.scrollDirection = .vertical
        collectionView.collectionViewLayout = flowLayout
        
        setupRefreshControl()
    }
    
    func networkRequest() {
        refreshAndGetData()
    }
}
