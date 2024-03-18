//
//  Snapshots+Extensions.swift
//  Calculator
//
//  Created by Nikos Galinos on 18/3/24.
//

import Foundation
import SwiftUI
/**
 used by snapshots in order to return a UIView from a
 SwiftUI View using the UIHostingController
 */
extension SwiftUI.View {
    func  toVC() -> UIViewController {
        let view = UIHostingController(rootView: self)
        return view
    }
}
