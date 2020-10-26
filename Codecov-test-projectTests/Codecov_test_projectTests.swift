//
//  Codecov_test_projectTests.swift
//  Codecov-test-projectTests
//
//  Created by Gerard, Stefan on 26.10.20.
//

@testable import Codecov_test_project
import XCTest

class Codecov_test_projectTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLoadTitle() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let viewModel = ContentViewModel()
        XCTAssertEqual(viewModel.title, "")

        viewModel.loadTitle()
        XCTAssertEqual(viewModel.title, "Codecov")
    }
}
