import XCTest
import UIKit

@testable import RKAutoLayout

class RKConstraintBuilderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_RKConstraintBuilderInit() {
        let dimension = NSLayoutDimension()
        let builder = RKConstraintBaseBuilder<NSLayoutDimension>(
            anchor: dimension,
            value: 10,
            relation: .lessThanOrEqual,
            priority: .low,
            isActive: false)

        XCTAssert(builder.anchor == dimension)
        XCTAssert(builder.value == 10)
        XCTAssert(builder.relation == .lessThanOrEqual)
        XCTAssert(builder.priority.value == RKConstraintPriority.low.value)
        XCTAssert(builder.isActive == false)
    }
}
