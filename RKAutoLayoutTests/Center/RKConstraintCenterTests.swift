import XCTest
import UIKit

@testable import RKAutoLayout

class RKConstraintCenterTests: XCTestCase {

    let view: UIView = UIView()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testResultIsCorrectXBuilder() {
        do {
            let builderHolder = RKConstraintCenter.centerX()
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 0)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.required.value)
            XCTAssert(builder.isActive == true)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.centerXAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(view.leftAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.leftAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(min: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(min: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.centerXAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(min: view.leftAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.leftAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(max: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(max: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.centerXAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerX(max: view.leftAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterXBuilder else {
                XCTFail("Builder must be RKConstraintCenterXBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.leftAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }
    }

    func testResultIsCorrectYBuilder() {
        do {
            let builderHolder = RKConstraintCenter.centerY()
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 0)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.required.value)
            XCTAssert(builder.isActive == true)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.centerYAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .equal)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(min: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(min: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.centerYAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(min: view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.topAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .greaterThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(max: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == nil)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(max: view, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
                return
            }

            XCTAssert(builder.anchor == view.centerYAnchor)
            XCTAssert(builder.value == 10)
            XCTAssert(builder.relation == .lessThanOrEqual)
            XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
            XCTAssert(builder.isActive == false)
        }

        do {
            let builderHolder = RKConstraintCenter.centerY(max: view.topAnchor, offset: 10, priority: .low, isActive: false)
            guard let builder = builderHolder.builder as? RKConstraintCenterYBuilder else {
                XCTFail("Builder must be RKConstraintCenterYBuilder type")
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
