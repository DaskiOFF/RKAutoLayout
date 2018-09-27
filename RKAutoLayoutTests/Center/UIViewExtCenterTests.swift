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

    func test_CenterEmptyValues() {
        let constraints = view!.rk_alCenter()
        XCTAssert(constraints.count == 0)
    }

    func test_CenterSuperView() {
        let constraints = view!.rk_alCenterSuperView()
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        do {
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

        do {
            let constraint = superview!.constraints.last!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .required)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .centerY)
            XCTAssert(constraint.relation == .equal)
            XCTAssert((constraint.secondItem as! UIView) == superview)
            XCTAssert(constraint.secondAttribute == .centerY)
        }
    }

    // MARK: - X
    func test_CenterX() {
        let constraints = view!.rk_alCenter(.centerX())
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
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
        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)

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

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
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

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
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

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
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

    // MARK: - Y
    func test_CenterY() {
        let constraints = view!.rk_alCenter(.centerY())
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .required)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerY)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerY)
    }

    func test_CenterY_Offset_Priority_ActiveFalse() {
        let constraints = view!.rk_alCenter(.centerY(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerY)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerY)

        XCTAssert(superview!.constraints.count == 0)
        XCTAssert(view!.constraints.count == 0)
    }

    func test_CenterY_Offset_Priority_ActiveTrue() {
        let constraints = view!.rk_alCenter(.centerY(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerY)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerY)
    }

    func test_CenterY_View_Offset_Priority_ActiveTrue() {
        let constraints = view!.rk_alCenter(.centerY(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerY)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .centerY)
    }

    func test_CenterY_Anchor_Offset_Priority_ActiveTrue() {
        let constraints = view!.rk_alCenter(.centerY(superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .centerY)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview)
        XCTAssert(constraint.secondAttribute == .top)
    }

    // MARK: - Remove
    func test_RemoveCenterX() {
        let constraints = view!.rk_alCenterSuperView()
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        view!.rk_alRemoveCenterXConstraints()

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)
    }

    func test_RemoveCenterY() {
        let constraints = view!.rk_alCenterSuperView()
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        view!.rk_alRemoveCenterYConstraints()

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 0)
    }

    func tests_RemoveBothCenterConstraints() {
        let constraints = view!.rk_alCenterSuperView()
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        view!.rk_alRemoveCenterConstraints()

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 0)
    }
}
