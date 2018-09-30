import XCTest
import UIKit

@testable import RKAutoLayout

class UIViewExtEdgeTests: XCTestCase {
    
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

    func test_EdgeSuperviewBounds() {
        let constraints = view!.rk_alEdgeSuperViewBounds()
        XCTAssert(constraints.count == 4)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)
        XCTAssert(superview!.constraints.count == 4)

        do {
            let constraint = constraints[0]
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .required)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .top)
            XCTAssert(constraint.relation == .equal)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .top)
            XCTAssert(constraint.multiplier == 1)
        }

        do {
            let constraint = constraints[1]
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .required)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .left)
            XCTAssert(constraint.relation == .equal)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .left)
            XCTAssert(constraint.multiplier == 1)
        }

        do {
            let constraint = constraints[2]
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .required)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .bottom)
            XCTAssert(constraint.relation == .equal)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .bottom)
            XCTAssert(constraint.multiplier == 1)
        }

        do {
            let constraint = constraints[3]
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .required)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .right)
            XCTAssert(constraint.relation == .equal)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .right)
            XCTAssert(constraint.multiplier == 1)
        }
    }

    // MARK: - Top
    func test_EdgeTop_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.top(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.top(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.top(superview!.bottomAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.top(superview!.bottomAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.top(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.top(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Left
    func test_EdgeLeft_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.left(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.left(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.left(superview!.rightAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.left(superview!.rightAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.left(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.left(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Bottom
    func test_EdgeBottom_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.bottom(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.bottom(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.bottom(superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.bottom(superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.bottom(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.bottom(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Right
    func test_EdgeRight_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.right(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.right(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.right(superview!.leftAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.right(superview!.leftAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.right(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.right(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Leading
    func test_EdgeLeading_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.leading(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.leading(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.leading(superview!.trailingAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.leading(superview!.trailingAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.leading(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.leading(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Trailing
    func test_EdgeTrailing_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.trailing(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.trailing(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.trailing(superview!.leadingAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.trailing(superview!.leadingAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.trailing(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.trailing(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Remove
    func test_RemoveTop() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9))
        XCTAssert(constraints.count == 4)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)

        view!.rk_alRemoveTopConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)
    }

    func test_RemoveLeft() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9))
        XCTAssert(constraints.count == 4)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)

        view!.rk_alRemoveLeftConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)
    }

    func test_RemoveBottom() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9))
        XCTAssert(constraints.count == 4)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)

        view!.rk_alRemoveBottomConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)
    }

    func test_RemoveRight() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9))
        XCTAssert(constraints.count == 4)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)

        view!.rk_alRemoveRightConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)
    }

    func test_RemoveLeading() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9), .leading(10), .trailing(9))
        XCTAssert(constraints.count == 6)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)

        view!.rk_alRemoveLeadingConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
    }

    func test_RemoveTrailing() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9), .leading(10), .trailing(9))
        XCTAssert(constraints.count == 6)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)

        view!.rk_alRemoveTrailingConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)
    }

    func test_RemoveAll() {
        let constraints = view!.rk_alEdge(.top(10), .left(1), .bottom(11), .right(9), .leading(10), .trailing(9))
        XCTAssert(constraints.count == 6)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)

        view!.rk_alRemoveAllEdgeConstraints()

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 0)
    }
}
