import XCTest
import UIKit

@testable import RKAutoLayout

class RKConstraintBaselineTests: XCTestCase {
    
    let view: UIView = UIView()

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }
    
    func test_ResultIsCorrectFirstBaselineBuilder() {
        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.firstBaselineAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(min: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(min: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.firstBaselineAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(min: view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(max: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(max: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.firstBaselineAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.firstBaseline(max: view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintFirstBaselineBuilder else {
                XCTFail("Builder must be RKConstraintFirstBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }
    }

    func test_ResultIsCorrectLastBaselineBuilder() {
        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.lastBaselineAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(min: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(min: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.lastBaselineAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(min: view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(max: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(max: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.lastBaselineAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintBaseline.lastBaseline(max: view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintLastBaselineBuilder else {
                XCTFail("Builder must be RKConstraintLastBaselineBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }
    }
}
