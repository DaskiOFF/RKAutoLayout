import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <CENTER> (Constraints)

    /// Add center constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintCenter
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alCenter(.centerX(10), .centerY())
    ///     view.rk_alCenter(.centerX(10), .centerY(), isActive: false)
    @discardableResult
    public func rk_alCenter(_ values: RKConstraintCenter..., isActive: Bool = true) -> RKConstraints {
        return self.rk_alCenter(with: values, isActive: isActive)
    }

    /// Add center constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintCenter
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alCenter(with: [.centerX(10), .centerY()])
    ///     view.rk_alCenter(with: [.centerX(10), .centerY()], isActive: false)
    @discardableResult
    func rk_alCenter(with values: [RKConstraintCenter], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            switch value.builder {
            case is RKConstraintCenterXBuilder:
                constraintsStorage.centerXConstraints.append(constraint)
            case is RKConstraintCenterYBuilder:
                constraintsStorage.centerYConstraints.append(constraint)
            default:
                fatalError()
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

    /// Remove all center constraints
    public func rk_alRemoveCenterConstraints() {
        rk_alRemoveCenterXConstraints()
        rk_alRemoveCenterYConstraints()
    }

    /// Remove all centerX constraints
    public func rk_alRemoveCenterXConstraints() {
        constraintsStorage.centerXConstraints.removeAllConstraints()
    }

    /// Remove all centerY constraints
    public func rk_alRemoveCenterYConstraints() {
        constraintsStorage.centerYConstraints.removeAllConstraints()
    }
}
