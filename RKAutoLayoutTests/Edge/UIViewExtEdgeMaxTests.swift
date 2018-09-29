import XCTest
import UIKit

@testable import RKAutoLayout

class UIViewExtEdgeMaxTests: XCTestCase {

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

    // MARK: - Top
    func test_EdgeTop_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.top(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.top(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.top(max: superview!.bottomAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.top(max: superview!.bottomAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.top(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTop_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.top(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTopConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .top)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Left
    func test_EdgeLeft_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.left(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.left(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.left(max: superview!.rightAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.left(max: superview!.rightAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.left(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeft_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.left(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeftConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .left)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Bottom
    func test_EdgeBottom_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.bottom(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.bottom(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.bottom(max: superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.bottom(max: superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.bottom(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeBottom_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.bottom(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeBottomConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .bottom)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .bottom)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Right
    func test_EdgeRight_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.right(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.right(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.right(max: superview!.leftAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.right(max: superview!.leftAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .left)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.right(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeRight_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.right(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeRightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .right)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .right)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Leading
    func test_EdgeLeading_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.leading(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.leading(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.leading(max: superview!.trailingAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.leading(max: superview!.trailingAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.leading(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeLeading_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.leading(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeLeadingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .leading)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Trailing
    func test_EdgeTrailing_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.trailing(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.trailing(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_Anchor_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.trailing(max: superview!.leadingAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_Anchor_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.trailing(max: superview!.leadingAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .leading)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alEdge(.trailing(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_EdgeTrailing_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alEdge(.trailing(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.edgeTrailingConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .trailing)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .trailing)
        XCTAssert(constraint.multiplier == 1)
    }
}
