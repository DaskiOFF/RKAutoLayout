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

        guard let storage = constraintsStorage else {
            assertionFailure("rk_alSize: constraintsStorage should not be nil!")
            return []
        }

        guard let _ = superview else {
            assertionFailure("rk_alSize: superview should not be nil!")
            return []
        }

        var constraints: RKConstraints = []
        var constraint: NSLayoutConstraint!
        var isWidthConstraint: Bool = false
        for value in values {
            isWidthConstraint = false

            switch value {
            // constant
            case .__widthPriorityActive(let constant, let priority, let active):
                constraint = widthAnchor.constraint(equalToConstant: constant).set(priority: priority).set(active: active && isActive)
                isWidthConstraint = true
            case .__heightPriorityActive(let constant, let priority, let active):
                constraint = heightAnchor.constraint(equalToConstant: constant).set(priority: priority).set(active: active && isActive)
            // dimension
            case .__widthDimensionPriorityActive(let dimension, let multiplier, let priority, let active):
                constraint = widthAnchor.constraint(equalTo: dimension, multiplier: multiplier).set(priority: priority).set(active: active && isActive)
                isWidthConstraint = true
            case .__heightDimensionPriorityActive(let dimension, let multiplier, let priority, let active):
                constraint = heightAnchor.constraint(equalTo: dimension, multiplier: multiplier).set(priority: priority).set(active: active && isActive)
            // min constant
            case .__widthMinPriorityActive(let constant, let priority, let active):
                constraint = widthAnchor.constraint(greaterThanOrEqualToConstant: constant).set(priority: priority).set(active: active && isActive)
                isWidthConstraint = true
            case .__heightMinPriorityActive(let constant, let priority, let active):
                constraint = heightAnchor.constraint(greaterThanOrEqualToConstant: constant).set(priority: priority).set(active: active && isActive)
            // max constant
            case .__widthMaxPriorityActive(let constant, let priority, let active):
                constraint = widthAnchor.constraint(lessThanOrEqualToConstant: constant).set(priority: priority).set(active: active && isActive)
                isWidthConstraint = true
            case .__heightMaxPriorityActive(let constant, let priority, let active):
                constraint = heightAnchor.constraint(lessThanOrEqualToConstant: constant).set(priority: priority).set(active: active && isActive)
            }

            if isWidthConstraint {
                storage.sizeWidthConstraints.append(constraint)
            } else {
                storage.sizeHeightConstraints.append(constraint)
            }
            constraints.append(constraint)
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
        guard let storage = constraintsStorage else { return }
        storage.sizeHeightConstraints.removeAllConstraints()
    }

    public func rk_alRemoveSizeWidthConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.sizeWidthConstraints.removeAllConstraints()
    }
}
