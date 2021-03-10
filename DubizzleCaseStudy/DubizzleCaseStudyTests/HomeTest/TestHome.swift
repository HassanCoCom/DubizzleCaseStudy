//
//  TestHome.swift
//  DubizzleCaseStudy
//
//  Created by Muhammad Hassan Asim on 09/03/2021.
//


import XCTest
@testable import DubizzleCaseStudy

class TestHome: XCTestCase {
    
    let view = MockHomeViewController()
    let interactor = MockHomeInteractor()
    let router = MockHomeRouter()
    
    var presenter: HomePresenter?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        presenter = HomePresenter(interface: view, interactor: interactor, router: router)
        view.presenter = presenter
        interactor.presenter = presenter
        presenter?.getData()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testItemsIsNotEmpty() {
        guard let items = presenter?.itemsData else { fatalError("items couldn't init properly") }
        XCTAssert(!items.isEmpty, " CASE FAILED: THE ITEMS ARE EMPTY")
    }
    
    func testRowCounts() {
        guard let items = presenter?.getRowCount() else { fatalError() }
        XCTAssert(items == 20, " CASE FAILED: Items Not equals Specifed Row Count")
    }
    
    func ifItemsExistForIndexPath(_ indexPath: IndexPath) {
        let item = presenter?.getCellDetails(at: indexPath)
        XCTAssert(item != nil, "CASE FAILED: SINCE ITEM DOESN'T EXSIT FOR INDEX")
    }
    
    func testItemsForIndexPaths() {
        self.ifItemsExistForIndexPath(IndexPath(row: 0, section: 0))
        self.ifItemsExistForIndexPath(IndexPath(row: 5, section: 0))
        self.ifItemsExistForIndexPath(IndexPath(row: 10, section: 0))
        self.ifItemsExistForIndexPath(IndexPath(row: 19, section: 0))
        
        // MARK: Failure Case
        //self.ifItemsExistForIndexPath(IndexPath(row: 20, section: 0))
    }
    
    func testAllItemsMustHaveName() {
        guard let items = presenter?.itemsData else { fatalError("items couldn't init properly") }
        items.forEach({
            XCTAssert($0.name != nil, "CASE FAILED: Found An Item With Empty Title")
        })
    }
    
    func testAllItemsMustHavePrice() {
        guard let items = presenter?.itemsData else { fatalError("items couldn't init properly") }
        items.forEach({
            XCTAssert($0.price != nil, "CASE FAILED: Found An Item With Empty Price")
        })
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
