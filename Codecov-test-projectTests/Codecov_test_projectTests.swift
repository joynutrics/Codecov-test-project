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
        let viewModel = ContentViewModel()
        XCTAssertEqual(viewModel.title, "")

        viewModel.loadTitle()
        XCTAssertEqual(viewModel.title, "Codecov")
    }

    func testChangeTitle() throws {
        let viewModel = ContentViewModel()
        XCTAssertEqual(viewModel.title, "")

        viewModel.changeTitle()
        XCTAssertEqual(viewModel.title, "Codecov2")
    }
}
