import XCTest
import UIKit

@testable import RKAutoLayout

class UIViewExtSizeTests: XCTestCase {
    
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

    // MARK: - Width
    func test_SizeWidth_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.width(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .equal)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeWidth_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 1)

        let constraint = view!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .equal)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeWidth_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.width(superview!, multiplier: 2, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .width)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeWidth_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(superview!, multiplier: 2, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .width)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeWidth_Dimension_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.width(superview!.heightAnchor, multiplier: 2, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .height)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeWidth_Dimension_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(superview!.heightAnchor, multiplier: 2, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .height)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeWidthMin_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.width(min: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeWidthMin_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(min: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 1)

        let constraint = view!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeWidthMax_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.width(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeWidthMax_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraints.count == 1)

        let constraint = view!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .width)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeWidthMinMax_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(min: 10, priority: .low, isActive: true),
                                          .width(max: 100, priority: .high, isActive: true))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 2)
        XCTAssert(view!.constraints.count == 2)

        do {
            let constraint = view!.constraints.first!
            XCTAssert(constraint.constant == 10)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultLow)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .width)
            XCTAssert(constraint.relation == .greaterThanOrEqual)
            XCTAssert(constraint.secondItem == nil)
            XCTAssert(constraint.secondAttribute == .notAnAttribute)
            XCTAssert(constraint.multiplier == 1)
        }

        do {
            let constraint = view!.constraints.last!
            XCTAssert(constraint.constant == 100)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultHigh)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .width)
            XCTAssert(constraint.relation == .lessThanOrEqual)
            XCTAssert(constraint.secondItem == nil)
            XCTAssert(constraint.secondAttribute == .notAnAttribute)
            XCTAssert(constraint.multiplier == 1)
        }
    }

    func test_SizeWidthMinMaxDimension_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(min: superview!.heightAnchor, multiplier: 2, priority: .low, isActive: true),
                                          .width(max: superview!.heightAnchor, multiplier: 3, priority: .high, isActive: true))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 2)
        XCTAssert(superview!.constraints.count == 2)

        do {
            let constraint = superview!.constraints.first!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultLow)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .width)
            XCTAssert(constraint.relation == .greaterThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .height)
            XCTAssert(constraint.multiplier == 2)
        }

        do {
            let constraint = superview!.constraints.last!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultHigh)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .width)
            XCTAssert(constraint.relation == .lessThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .height)
            XCTAssert(constraint.multiplier == 3)
        }
    }

    func test_SizeWidthMinMaxView_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.width(min: superview!, multiplier: 2, priority: .low, isActive: true),
                                          .width(max: superview!, multiplier: 3, priority: .high, isActive: true))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 2)
        XCTAssert(superview!.constraints.count == 2)

        do {
            let constraint = superview!.constraints.first!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultLow)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .width)
            XCTAssert(constraint.relation == .greaterThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .width)
            XCTAssert(constraint.multiplier == 2)
        }

        do {
            let constraint = superview!.constraints.last!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultHigh)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .width)
            XCTAssert(constraint.relation == .lessThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .width)
            XCTAssert(constraint.multiplier == 3)
        }
    }

    // MARK: - Height
    func test_SizeHeight_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.height(10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .equal)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeHeight_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 1)

        let constraint = view!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .equal)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeHeight_View_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.height(superview!, multiplier: 2, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .height)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeHeight_View_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(superview!, multiplier: 2, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .height)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeHeight_Dimension_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.height(superview!.widthAnchor, multiplier: 2, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .width)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeHeight_Dimension_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(superview!.widthAnchor, multiplier: 2, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(superview!.constraints.count == 1)

        let constraint = superview!.constraints.first!
        XCTAssert(constraint.constant == 0)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .equal)
        XCTAssert((constraint.secondItem as! UIView) == superview!)
        XCTAssert(constraint.secondAttribute == .width)
        XCTAssert(constraint.multiplier == 2)
    }

    func test_SizeHeightMin_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.height(min: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeHeightMin_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(min: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 1)

        let constraint = view!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .greaterThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeHeightMax_Constant_Priority_ActiveFalse() {
        let constraints = view!.rk_alSize(.height(max: 10, priority: .low, isActive: false))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 0)

        let constraint = constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == false)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeHeightMax_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(max: 10, priority: .low, isActive: true))
        XCTAssert(constraints.count == 1)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
        XCTAssert(view!.constraints.count == 1)

        let constraint = view!.constraints.first!
        XCTAssert(constraint.constant == 10)
        XCTAssert(constraint.isActive == true)
        XCTAssert(constraint.priority == .defaultLow)

        XCTAssert((constraint.firstItem as! UIView) == view)
        XCTAssert(constraint.firstAttribute == .height)
        XCTAssert(constraint.relation == .lessThanOrEqual)
        XCTAssert(constraint.secondItem == nil)
        XCTAssert(constraint.secondAttribute == .notAnAttribute)
        XCTAssert(constraint.multiplier == 1)
    }

    func test_SizeHeightMinMax_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(min: 10, priority: .low, isActive: true),
                                          .height(max: 100, priority: .high, isActive: true))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 2)
        XCTAssert(view!.constraints.count == 2)

        do {
            let constraint = view!.constraints.first!
            XCTAssert(constraint.constant == 10)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultLow)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .height)
            XCTAssert(constraint.relation == .greaterThanOrEqual)
            XCTAssert(constraint.secondItem == nil)
            XCTAssert(constraint.secondAttribute == .notAnAttribute)
            XCTAssert(constraint.multiplier == 1)
        }

        do {
            let constraint = view!.constraints.last!
            XCTAssert(constraint.constant == 100)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultHigh)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .height)
            XCTAssert(constraint.relation == .lessThanOrEqual)
            XCTAssert(constraint.secondItem == nil)
            XCTAssert(constraint.secondAttribute == .notAnAttribute)
            XCTAssert(constraint.multiplier == 1)
        }
    }

    func test_SizeHeightMinMaxDimension_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(min: superview!.widthAnchor, multiplier: 2, priority: .low, isActive: true),
                                          .height(max: superview!.widthAnchor, multiplier: 3, priority: .high, isActive: true))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 2)
        XCTAssert(superview!.constraints.count == 2)

        do {
            let constraint = superview!.constraints.first!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultLow)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .height)
            XCTAssert(constraint.relation == .greaterThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .width)
            XCTAssert(constraint.multiplier == 2)
        }

        do {
            let constraint = superview!.constraints.last!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultHigh)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .height)
            XCTAssert(constraint.relation == .lessThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .width)
            XCTAssert(constraint.multiplier == 3)
        }
    }

    func test_SizeHeightMinMaxView_Constant_Priority_ActiveTrue() {
        let constraints = view!.rk_alSize(.height(min: superview!, multiplier: 2, priority: .low, isActive: true),
                                          .height(max: superview!, multiplier: 3, priority: .high, isActive: true))
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 2)
        XCTAssert(superview!.constraints.count == 2)

        do {
            let constraint = superview!.constraints.first!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultLow)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .height)
            XCTAssert(constraint.relation == .greaterThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .height)
            XCTAssert(constraint.multiplier == 2)
        }

        do {
            let constraint = superview!.constraints.last!
            XCTAssert(constraint.constant == 0)
            XCTAssert(constraint.isActive == true)
            XCTAssert(constraint.priority == .defaultHigh)

            XCTAssert((constraint.firstItem as! UIView) == view)
            XCTAssert(constraint.firstAttribute == .height)
            XCTAssert(constraint.relation == .lessThanOrEqual)
            XCTAssert((constraint.secondItem as! UIView) == superview!)
            XCTAssert(constraint.secondAttribute == .height)
            XCTAssert(constraint.multiplier == 3)
        }
    }

    // MARK: - Remove
    func test_RemoveWidth() {
        let constraints = view!.rk_alSize(.width(min: 10), .width(max: 100), .height(10))
        XCTAssert(constraints.count == 3)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 2)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)

        view!.rk_alRemoveSizeWidthConstraints()

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)
    }

    func test_RemoveHeight() {
        let constraints = view!.rk_alSize(.width(10), .height(min: 10), .height(max: 100))
        XCTAssert(constraints.count == 3)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 2)

        view!.rk_alRemoveSizeHeightConstraints()

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 0)
    }

    func tests_RemoveBothSizeConstraints() {
        let constraints = view!.rk_alSize(.width(10), .height(min: 10), .height(max: 100))
        XCTAssert(constraints.count == 3)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 2)

        view!.rk_alRemoveSizeConstraints()

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 0)
    }
}
