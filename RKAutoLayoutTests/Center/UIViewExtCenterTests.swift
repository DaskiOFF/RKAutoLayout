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
    
    func test_CenterX() {
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

    func test_CenterX_Offset_Priority_ActiveFalse() {
        let constraints = view!.rk_alCenter(.centerX(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerX)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerX)

        XCTAssert(superview!.constraints.count == 0)
        XCTAssert(view!.constraints.count == 0)
    }

    func test_CenterX_Offset_Priority_ActiveTrue() {
        let constraints = view!.rk_alCenter(.centerX(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerX)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerX)
    }

    func test_CenterX_View_Offset_Priority_ActiveTrue() {
        let constraints = view!.rk_alCenter(.centerX(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerX)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerX)
    }

    func test_CenterX_Anchor_Offset_Priority_ActiveTrue() {
        let constraints = view!.rk_alCenter(.centerX(superview!.leftAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerX)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .left)
    }
}
