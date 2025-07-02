//
//  CategoryGridViewModelTests.swift
//  MockLockerTests
//
//  Created by Randy Varela on 7/1/25.
//

import XCTest
import SwiftUI
@testable import Mock_Locker

final class CategoryGridViewModelTests: XCTestCase {
    
    var viewModel: CategoryGridViewModel!

    override func setUpWithError() throws {
        super.setUp()
        viewModel = CategoryGridViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
        super.tearDown()
    }

    func testInitialization() {
        XCTAssertNotNil(viewModel, "ViewModel should be initialized")
        XCTAssertFalse(viewModel.categoryProducts.isEmpty, "Category products should not be empty")
    }

    func testLoadTopSellingCategories() {
        //The category grid is a 3x3 grid of products, therefore will always be 9 products
        let expectedCount = 9
        
        viewModel.loadTopSellingCategories()
        
        XCTAssertEqual(viewModel.categoryProducts.count, expectedCount, "Should have 9 products")
        XCTAssertEqual(viewModel.categoryProducts.first, MerchandiseData.merchandise[6], "First product should be [6]")
        XCTAssertEqual(viewModel.categoryProducts.last, MerchandiseData.merchandise[14], "Last product should be [14]")
    }
    
    func testCategorySubsetAreCorrectProduct() {
        let expectedProducts = Array(MerchandiseData.merchandise[6...14])
        
        XCTAssertEqual(viewModel.categoryProducts, expectedProducts, "Category grid should display items 6-14")
    }
    
    func testCategoryGridTitle() {
        let expectedTitle = "Top Selling Categories"
        
        let actualTitle = viewModel.categoryGridTitle
        
        XCTAssertEqual(expectedTitle, actualTitle, "Category Grid Title does not match")
    }
    
    func testCategoryGridTitleIsNotEmpty() {
        
        let title = viewModel.categoryGridTitle
        
        XCTAssertFalse(title.isEmpty, "Category Grid does not have title")
    }
    
    func testGridColumns() {
        let expectedGridColumns = 3
        
        let columns = viewModel.gridColumns
        
        XCTAssertEqual(expectedGridColumns, columns.count, "incorrect number of grid columns")
        
        //Make sure all 3 columns are flexible
        for column in columns {
            if case .flexible = column.size {
                
            } else {
                XCTFail("All columns should be flexible")
            }
        }
    }
    
    func testGridSpacing() {
        
        let expectedSpacing: CGFloat = 6
        
        let actualSpacing = viewModel.gridSpacing
        
        XCTAssertEqual(expectedSpacing, actualSpacing, "Grid Spacing does not match, should be 6")
    }
    
    func testCategoryProductsIsPublished() {
        let expectation = XCTestExpectation(description: "Category Products should trigger published updates")
        var receivedUpdate = false
        
        let cancellable = viewModel.$categoryProducts.sink { _ in
            receivedUpdate = true
            expectation.fulfill()
        }
        
        viewModel.categoryProducts = []
        
        wait(for: [expectation], timeout: 1.0)
        XCTAssertTrue(receivedUpdate, "published property should notify observers")
        
        cancellable.cancel()
        
        
    }

}
