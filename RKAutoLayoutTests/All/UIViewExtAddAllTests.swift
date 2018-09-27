import XCTest
import UIKit

@testable import RKAutoLayout

class UIViewExtAddAllTests: XCTestCase {

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

    func test_AddAllEmpty() {
        let constraints = view!.rk_alAdd()
        XCTAssert(constraints.count == 0)
    }

    func test_AddAll() {
        let constraints = view!.rk_alAdd(size: [.width(10), .height(20)], center: [.centerX(), .centerY()], edge: [.top(0), .left(0), .bottom(0), .right(0)])
        XCTAssert(constraints.count == 8)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        XCTAssert(view!.constraintsStorage!.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.edgeRightConstraints.count == 1)
    }

    func test_AddSize() {
        let constraints = view!.rk_alAdd(size: [.width(10), .height(20)])
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 1)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 0)

        XCTAssert(view!.constraintsStorage!.edgeTopConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.edgeLeftConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.edgeBottomConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.edgeRightConstraints.count == 0)
    }

    func test_AddCenter() {
        let constraints = view!.rk_alAdd(center: [.centerX(), .centerY()])
        XCTAssert(constraints.count == 2)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 0)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 1)

        XCTAssert(view!.constraintsStorage!.edgeTopConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.edgeLeftConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.edgeBottomConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.edgeRightConstraints.count == 0)
    }

    func test_AddEdge() {
        let constraints = view!.rk_alAdd(edge: [.top(0), .left(0), .bottom(0), .right(0)])
        XCTAssert(constraints.count == 4)

        XCTAssert(view!.constraintsStorage!.sizeWidthConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.sizeHeightConstraints.count == 0)

        XCTAssert(view!.constraintsStorage!.centerXConstraints.count == 0)
        XCTAssert(view!.constraintsStorage!.centerYConstraints.count == 0)

        XCTAssert(view!.constraintsStorage!.edgeTopConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.edgeLeftConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.edgeBottomConstraints.count == 1)
        XCTAssert(view!.constraintsStorage!.edgeRightConstraints.count == 1)
    }
}
