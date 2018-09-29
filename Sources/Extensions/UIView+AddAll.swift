import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <ADD> (Constraints)
    @discardableResult
    public func rk_alAdd(size: [RKConstraintSize] = [], center: [RKConstraintCenter] = [], edge: [RKConstraintEdge] = [], isActive: Bool = true) -> RKConstraints {
        var resultConstraints: RKConstraints = []

        resultConstraints += rk_alSize(with: size, isActive: isActive)
        resultConstraints += rk_alCenter(with: center, isActive: isActive)
        resultConstraints += rk_alEdge(with: edge, isActive: isActive)

        return resultConstraints
    }
}
