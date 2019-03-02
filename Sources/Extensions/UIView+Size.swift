import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <SIZE> (Constraints)

    /// Add size constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintSize
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alSize(.width(10), .height(min: otherView))
    ///     view.rk_alSize(.width(10), .height(max: otherView), isActive: false)
    @discardableResult
    public func rk_alSize(_ values: RKConstraintSize..., isActive: Bool = true) -> RKConstraints {
        return rk_alSize(with: values, isActive: isActive)
    }

    /// Add size constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintSize
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alSize(with: [.width(10), .height(min: otherView)])
    ///     view.rk_alSize(with: [.width(10), .height(max: otherView)], isActive: false)
    @discardableResult
    func rk_alSize(with values: [RKConstraintSize], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            switch value.builder {
            case is RKConstraintWidthBuilder:
                constraintsStorage.sizeWidthConstraints.append(constraint)
            case is RKConstraintHeightBuilder:
                constraintsStorage.sizeHeightConstraints.append(constraint)
            default:
                fatalError()
            }
        }

        return constraints
    }
}

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove <SIZE>

    /// Remove all size constraints
    public func rk_alRemoveSizeConstraints() {
        rk_alRemoveSizeWidthConstraints()
        rk_alRemoveSizeHeightConstraints()
    }

    /// Remove all height constraints
    public func rk_alRemoveSizeHeightConstraints() {
        constraintsStorage.sizeHeightConstraints.removeAllConstraints()
    }

    /// Remove all width constraints
    public func rk_alRemoveSizeWidthConstraints() {
        constraintsStorage.sizeWidthConstraints.removeAllConstraints()
    }
}
