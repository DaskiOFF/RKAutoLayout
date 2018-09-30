import XCTest
import UIKit

@testable import RKAutoLayout

class ArrayExt: XCTestCase {

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
    
    func test_ActivateConstraints() {
        let constraints = view!.rk_alCenterSuperView()
        XCTAssert(constraints.count == 2)

        for c in constraints {
            c.isActive = false
        }

        XCTAssert(constraints.filter({ $0.isActive == true }).count == 0)
        XCTAssert(constraints.filter({ $0.isActive == false }).count == 2)

        constraints.activate()

        XCTAssert(constraints.filter({ $0.isActive == true }).count == 2)
        XCTAssert(constraints.filter({ $0.isActive == false }).count == 0)
    }

    func test_DeactivateConstraints() {
        let constraints = view!.rk_alCenterSuperView()
        XCTAssert(constraints.count == 2)

        for c in constraints {
            c.isActive = true
        }

        XCTAssert(constraints.filter({ $0.isActive == false }).count == 0)
        XCTAssert(constraints.filter({ $0.isActive == true }).count == 2)

        constraints.deactivate()

        XCTAssert(constraints.filter({ $0.isActive == false }).count == 2)
        XCTAssert(constraints.filter({ $0.isActive == true }).count == 0)
    }
}
