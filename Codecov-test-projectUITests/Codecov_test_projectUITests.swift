//
//  Codecov_test_projectUITests.swift
//  Codecov-test-projectUITests
//
//  Created by Gerard, Stefan on 26.10.20.
//

import XCTest

class Codecov_test_projectUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testClickMeButton() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let textLabel = app.staticTexts.element
        XCTAssert(textLabel.exists)
        XCTAssertEqual(textLabel.label, "Hello, world!")
        
        let button = app.buttons["Click Me!"]
        XCTAssert(button.exists)
        XCTAssertEqual(button.label, "Click Me!")
        
        button.tap()
        XCTAssertEqual(textLabel.label, "Hello, Codecov!")
    }
    
    func testClickMeTooButton() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let textLabel = app.staticTexts.element
        XCTAssert(textLabel.exists)
        XCTAssertEqual(textLabel.label, "Hello, world!")
        
        let button = app.buttons["Click Me, too!"]
        XCTAssert(button.exists)
        XCTAssertEqual(button.label, "Click Me, too!")
        
        button.tap()
        XCTAssertEqual(textLabel.label, "Hello, Codecov2!")
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
