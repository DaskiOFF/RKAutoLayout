import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <ADD> (Constraints)

    /// Add several types constraints
    ///
    /// - Parameters:
    ///   - size: RKConstraintSize objects
    ///   - center: RKConstraintCenter objects
    ///   - edge: RKConstraintEdge objects
    ///   - baseline: RKConstraintBaseline objects
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alAdd(size: [.width(10), .height(10)], center: [.centerX(), .centerY()])
    ///     view.rk_alAdd(center: [.centerX()], edge: [.top(100), .bottom(-90)])
    @discardableResult
    public func rk_alAdd(
      size: [RKConstraintSize] = [],
      center: [RKConstraintCenter] = [],
      edge: [RKConstraintEdge] = [],
      baseline: [RKConstraintBaseline] = [],
      isActive: Bool = true) -> RKConstraints {
        var resultConstraints: RKConstraints = []

        resultConstraints += rk_alSize(with: size, isActive: isActive)
        resultConstraints += rk_alCenter(with: center, isActive: isActive)
        resultConstraints += rk_alEdge(with: edge, isActive: isActive)
        resultConstraints += rk_alBaseline(with: baseline, isActive: isActive)

        return resultConstraints
    }
}
