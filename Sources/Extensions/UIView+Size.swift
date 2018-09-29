import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <SIZE> (Constraints)
    /// Constraints for size
    ///
    /// Example:
    /// ```
    /// view.rk_alSize(values: [.width(50), .height(anotherView, multiplier: 3)])
    /// ```
    /// or
    /// ```
    /// view.rk_alSize(values: [.width(anotherView.heightAnchor, priority: .low), .height(anotherView)])
    ///
    /// ```
    /// or
    /// ```
    /// view.rk_alSize(values: [.width(200), .height(min: 60), .height(max: 220)])
    /// ```
    /// etc.
    ///
    /// - Parameter values: Set<RKConstraintSize>
    /// - Returns: Array of constraints
    @discardableResult
    public func rk_alSize(_ values: RKConstraintSize..., isActive: Bool = true) -> RKConstraints {
        return rk_alSize(with: values, isActive: isActive)
    }

    @discardableResult
    func rk_alSize(with values: [RKConstraintSize], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            if value.builder is RKConstraintWidthBuilder {
                constraintsStorage.sizeWidthConstraints.append(constraint)
            } else {
                constraintsStorage.sizeHeightConstraints.append(constraint)
            }
        }

        return constraints
    }
}

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove <SIZE>
    public func rk_alRemoveSizeConstraints() {
        rk_alRemoveSizeWidthConstraints()
        rk_alRemoveSizeHeightConstraints()
    }
    public func rk_alRemoveSizeHeightConstraints() {
        constraintsStorage.sizeHeightConstraints.removeAllConstraints()
    }

    public func rk_alRemoveSizeWidthConstraints() {
        constraintsStorage.sizeWidthConstraints.removeAllConstraints()
    }
}
