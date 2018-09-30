import XCTest
import UIKit

@testable import RKAutoLayout

class UIViewExtBaselinesTests: XCTestCase {
    
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

    // MARK: - FirstBaseline
    func test_FirstBaseline_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaseline_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaseline_Anchor_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaseline_Anchor_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaseline_View_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaseline_View_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: Min
    func test_FirstBaselineMin_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(min: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMin_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(min: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMin_Anchor_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(min: superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMin_Anchor_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(min: superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMin_View_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(min: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMin_View_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(min: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: Max
    func test_FirstBaselineMax_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMax_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMax_Anchor_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(max: superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMax_Anchor_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(max: superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMax_View_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.firstBaseline(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_FirstBaselineMax_View_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.firstBaseline(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .firstBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .firstBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - LastBaseline
    func test_LastBaseline_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaseline_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaseline_Anchor_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaseline_Anchor_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaseline_View_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaseline_View_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: Min
    func test_LastBaselineMin_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(min: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMin_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(min: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMin_Anchor_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(min: superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMin_Anchor_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(min: superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMin_View_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(min: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMin_View_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(min: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: Max
    func test_LastBaselineMax_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMax_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMax_Anchor_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(max: superview!.topAnchor, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMax_Anchor_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(max: superview!.topAnchor, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .top)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMax_View_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alBaseline(.lastBaseline(max: superview!, offset: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_LastBaselineMax_View_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alBaseline(.lastBaseline(max: superview!, offset: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .lastBaseline)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .lastBaseline)
        XCTAssert(constraint.multiplier == 1)
    }

    // MARK: - Remove
    func test_RemoveFirstBaseline() {
        let constraints = view!.rk_alBaseline(.firstBaseline(10), .lastBaseline(9))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)

        view!.rk_alRemoveFirstBaselineConstraints()

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)
    }

    func test_RemoveLastBaseline() {
        let constraints = view!.rk_alBaseline(.firstBaseline(10), .lastBaseline(9))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)

        view!.rk_alRemoveLastBaselineConstraints()

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 0)
    }

    func test_RemoveBothBaselineConstraints() {
        let constraints = view!.rk_alBaseline(.firstBaseline(10), .lastBaseline(9))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 1)
        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 1)

        view!.rk_alRemoveBaselineConstraints()

        XCTAssert(view!.constraintsStorage.firstBaselineConstraints.count == 0)
        XCTAssert(view!.constraintsStorage.lastBaselineConstraints.count == 0)
    }
}
