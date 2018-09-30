//
//  UIViewExtCenterTests.swift
//  RKAutoLayoutTests
//
//  Created by Roman Kotov on 26/09/2018.
//  Copyright © 2018 Roman Kotov. All rights reserved.
//

import XCTest
import UIKit

@testable import RKAutoLayout

class UIViewExtCenterTests: XCTestCase {

    var superview: UIView?
    var view: UIView?

    override func setUp() {
        super.setUp()

        superview = UIView()
        view = UIView()
        superview!.addSubview(view!)
    }
    
    override func tearDown() {
        superview = nil
        view = nil

        super.tearDown()
    }
    
    func testCenterX() {
        let constraints = view!.rk_alCenter(.centerX())
        XCTAssert(constraints.count == 1)

        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .required)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerX)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerX)
    }

    func testCenterXWithOffset() {
        let constraints = view!.rk_alCenter(.centerX(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerX)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerX)
    }
}
