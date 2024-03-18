//
//  SnapshotTests.swift
//  CalculatorTests
//
//  Created by Nikos Galinos on 18/3/24.
//

import XCTest
import SnapshotTesting
import SwiftUI
@testable import Calculator

final class SnapshotTests: XCTestCase {


    func testRoundButtonSymbol() throws {
        // Given
        let sut = RoundButtonSymbol(symbol: "+",
                                    action: { /* empty */}).toVC()
        // When
        sut.view.frame.size = CGSize(width: 100, height: 100)

        // Then
        assertSnapshot(of: sut, as: .image)
    }

    func testRoundButtonNumber() throws {
        // Given
        let sut = RoundButtonNumber(symbol: "3" ,
                                    action: { /* empty */}).toVC()
        // When
        sut.view.frame.size = CGSize(width: 100, height: 100)

        // Then
        assertSnapshot(of: sut, as: .image)
    }

    func testRoundButtonZero() throws {
        // Given
        let sut = RoundButtonZero(symbol: "0" ,
                                  action: { /* empty */}).toVC()
        // When
        sut.view.frame.size = CGSize(width: 180, height: 100)

        // Then
        assertSnapshot(of: sut, as: .image)
    }

    func testRoundButtonAC() throws {
        // Given
        let sut = RoundButtonAC(symbol: "AC" ,
                                action: { /* empty */}).toVC()
        // When
        sut.view.frame.size = CGSize(width: 100, height: 100)

        // Then
        assertSnapshot(of: sut, as: .image)
    }

    func testContentView() throws {
        // Given
        let sut = ContentView().environmentObject(CalculatorViewModel()).toVC()
        // Then
        assertSnapshot(of: sut, as: .image)
    }
}
