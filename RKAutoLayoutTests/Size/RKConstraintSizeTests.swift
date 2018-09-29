import XCTest
import UIKit

@testable import RKAutoLayout

class RKConstraintSizeTests: XCTestCase {

    let view: UIView = UIView()

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testResultIsCorrectWidthBuilder() {
        do {
            let builderHolder = RKConstraintSize.width(10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(view, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.widthAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(view.heightAnchor, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.heightAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(min: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(min: view, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.widthAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(min: view.heightAnchor, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.heightAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(max: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(max: view, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.widthAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.width(max: view.heightAnchor, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintWidthBuilder else {
                XCTFail("Builder must be RKConstraintWidthBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.heightAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }
    }

    func testResultIsCorrectHeightBuilder() {
        do {
            let builderHolder = RKConstraintSize.height(10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(view, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.heightAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(view.widthAnchor, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.widthAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(min: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(min: view, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.heightAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(min: view.widthAnchor, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.widthAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(max: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(max: view, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.heightAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintSize.height(max: view.widthAnchor, multiplier: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintHeightBuilder else {
                XCTFail("Builder must be RKConstraintHeightBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.widthAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }
    }
}
