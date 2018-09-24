import UIKit

@available (iOS 9, *)
public enum RKConstraintCenter: Hashable, Equatable {
    /// :nodoc:
    case __x(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __xAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __y(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __yAnchor(NSLayoutYAxisAnchor, CGFloat, RKConstraintPriority, Bool)

    /// :nodoc:
    public var hashValue: Int {
        switch self {
        case .__x(_, _, _), .__xAnchor(_, _, _, _): return 1
        case .__y(_, _, _), .__yAnchor(_, _, _, _): return 2
        }
    }

    /// :nodoc:
    public static func == (lhs: RKConstraintCenter, rhs: RKConstraintCenter) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    // Center X
    public static func centerX(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return .__x(offset, priority, isActive)
    }
    public static func centerX(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return .__xAnchor(view.centerXAnchor, offset, priority, isActive)
    }
    public static func centerX(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return .__xAnchor(anchor, offset, priority, isActive)
    }

    // Center Y
    public static func centerY(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return .__y(offset, priority, isActive)
    }
    public static func centerY(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return .__yAnchor(view.centerYAnchor, offset, priority, isActive)
    }
    public static func centerY(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return .__yAnchor(anchor, offset, priority, isActive)
    }
}

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

        guard let storage = constraintsStorage else {
            assertionFailure("rk_alCenter: constraintsStorage should not be nil!")
            return []
        }

        guard let superview = superview else {
            assertionFailure("rk_alCenter: superview should not be nil!")
            return []
        }

        var constraints: RKConstraints = []
        var constraint: NSLayoutConstraint!
        var isCenterXConstraint: Bool = false
        for value in values {
            isCenterXConstraint = false

            switch value {
            // constant
            case .__x(let offset, let priority, let active):
                constraint = centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                isCenterXConstraint = true
            case .__y(let offset, let priority, let active):
                constraint = centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: offset).set(priority: priority).set(active: active && isActive)

            // anchor
            case .__xAnchor(let anchor, let offset, let priority, let active):
                constraint = centerXAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                isCenterXConstraint = true
            case .__yAnchor(let anchor, let offset, let priority, let active):
                constraint = centerYAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
            }

            constraints.append(constraint)
            if isCenterXConstraint {
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
