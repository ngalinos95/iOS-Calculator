//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Nikos Galinos on 13/5/23.
//

import XCTest
@testable import Calculator

final class CalculatorTests: XCTestCase {
    var sut: CalculatorViewModel!
    override func setUpWithError() throws {
        // Given
        sut = CalculatorViewModel()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testAcButtonAction() throws {
        // When
        sut.acButtonAction()
        //Then
        XCTAssertEqual(sut.calc.combination, "0")
        XCTAssertEqual(sut.calc.calculatedCombination, "0")
        XCTAssertEqual(sut.calc.result, "0")
    }
    // TODO: Complete the test for all ViewModel functions
}
