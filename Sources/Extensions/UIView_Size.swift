import UIKit

@available (iOS 9, *)
public enum RKConstraintSize: Hashable, Equatable {
    /// :nodoc:
    case __widthPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __widthDimensionPriorityActive(NSLayoutDimension, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __widthMinPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __widthMaxPriorityActive(CGFloat, RKConstraintPriority, Bool)

    /// :nodoc:
    case __heightPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __heightDimensionPriorityActive(NSLayoutDimension, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __heightMinPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __heightMaxPriorityActive(CGFloat, RKConstraintPriority, Bool)

    /// :nodoc:
    public var hashValue: Int {
        switch self {
        case .__widthPriorityActive(_, _, _), .__widthDimensionPriorityActive(_, _, _, _): return 1
        case .__widthMinPriorityActive(_, _, _): return 2
        case .__widthMaxPriorityActive(_, _, _): return 3
        case .__heightPriorityActive(_, _, _), .__heightDimensionPriorityActive(_, _, _, _): return 4
        case .__heightMinPriorityActive(_, _, _): return 5
        case .__heightMaxPriorityActive(_, _, _): return 6
        }
    }

    /// :nodoc:
    public static func == (lhs: RKConstraintSize, rhs: RKConstraintSize) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    // MARK: Width
    public static func width(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthPriorityActive(constant, priority, isActive)
    }
    public static func width(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthDimensionPriorityActive(dimension, multiplier, priority, isActive)
    }
    public static func width(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .width(view.widthAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }
    public static func width(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthMinPriorityActive(min, priority, isActive)
    }
    public static func width(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthMaxPriorityActive(max, priority, isActive)
    }

    // MARK: Height
    public static func height(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightPriorityActive(constant, priority, isActive)
    }
    public static func height(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightDimensionPriorityActive(dimension, multiplier, priority, isActive)
    }
    public static func height(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .height(view.heightAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }
    public static func height(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightMinPriorityActive(min, priority, isActive)
    }
    public static func height(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightMaxPriorityActive(max, priority, isActive)
    }
}

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
