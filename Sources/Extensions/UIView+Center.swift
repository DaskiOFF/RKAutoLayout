import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <CENTER> (Constraints)
    /// Constraints for center
    ///
    /// Example:
    /// ```
    /// view.rk_alCenter(values: [.centerX(100), .centerY(300)])
    /// ```
    /// or
    /// ```
    /// view.rk_alCenter(values: [.centerX(), .centerY(anotherView.topAnchor)])
    ///
    /// ```
    /// or
    /// ```
    /// view.rk_alCenter(values: RKConstraintCenter.center(anotherView, offsetX: -100, offsetY: -100))
    /// ```
    /// etc.
    ///
    /// - Parameter values: RKConstraintSize...
    /// - Returns: Array of constraints
    @discardableResult
    public func rk_alCenter(_ values: RKConstraintCenter..., isActive: Bool = true) -> RKConstraints {
        return self.rk_alCenter(with: values, isActive: isActive)
    }

    @discardableResult
    func rk_alCenter(with values: [RKConstraintCenter], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        guard let storage = constraintsStorage else { fatalError("rk_alCenter: constraintsStorage should not be nil!") }

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            if value.builder is RKConstraintCenterXBuilder {
                storage.centerXConstraints.append(constraint)
            } else {
                storage.centerYConstraints.append(constraint)
            }
        }

        return constraints
    }

    /// Constraints for centering in superview
    @discardableResult
    public func rk_alCenterSuperView(isActive: Bool = true) -> RKConstraints {
        return self.rk_alCenter(.centerX(), .centerY(), isActive: isActive)
    }
}

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove <CENTER>
    public func rk_alRemoveCenterConstraints() {
        rk_alRemoveCenterXConstraints()
        rk_alRemoveCenterYConstraints()
    }

    public func rk_alRemoveCenterXConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.centerXConstraints.removeAllConstraints()
    }

    public func rk_alRemoveCenterYConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.centerYConstraints.removeAllConstraints()
    }
}
