import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove
    public func rk_alRemoveAllEdgeConstraints() {
        rk_alRemoveTopConstraints()
        rk_alRemoveLeftConstraints()
        rk_alRemoveBottomConstraints()
        rk_alRemoveRightConstraints()
        rk_alRemoveLeadingConstraints()
        rk_alRemoveTrailingConstraints()
    }

    public func rk_alRemoveTopConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.edgeTopConstraints.removeAllConstraints()
    }
    public func rk_alRemoveLeftConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.edgeLeftConstraints.removeAllConstraints()
    }
    public func rk_alRemoveBottomConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.edgeBottomConstraints.removeAllConstraints()
    }
    public func rk_alRemoveRightConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.edgeRightConstraints.removeAllConstraints()
    }
    public func rk_alRemoveLeadingConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.edgeLeadingConstraints.removeAllConstraints()
    }
    public func rk_alRemoveTrailingConstraints() {
        guard let storage = constraintsStorage else { return }
        storage.edgeTrailingConstraints.removeAllConstraints()
    }
}

@available (iOS 9, *)
public enum RKConstraintEDGE: Hashable, Equatable {
    case __top(CGFloat, RKConstraintPriority, Bool)
    case __topAnchor(NSLayoutYAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    case __left(CGFloat, RKConstraintPriority, Bool)
    case __leftAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    case __leading(CGFloat, RKConstraintPriority, Bool)
    case __leadingAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    case __bottom(CGFloat, RKConstraintPriority, Bool)
    case __bottomGreaterOrEqual(CGFloat, RKConstraintPriority, Bool)
    case __bottomAnchor(NSLayoutYAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    case __right(CGFloat, RKConstraintPriority, Bool)
    case __rightAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    case __trailing(CGFloat, RKConstraintPriority, Bool)
    case __trailingAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)

    public var hashValue: Int {
        switch self {
        case .__top(_, _, _), .__topAnchor(_, _, _, _): return 1
        case .__left(_, _, _), .__leftAnchor(_, _, _, _): return 2
        case .__leading(_, _, _), .__leadingAnchor(_, _, _, _): return 3
        case .__bottom(_, _, _), .__bottomGreaterOrEqual(_, _, _), .__bottomAnchor(_, _, _, _): return 4
        case .__right(_, _, _), .__rightAnchor(_, _, _, _): return 5
        case .__trailing(_, _, _), .__trailingAnchor(_, _, _, _): return 6
        }
    }

    public static func == (lhs: RKConstraintEDGE, rhs: RKConstraintEDGE) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    // MARK: Top
    public static func top(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__top(offset, priority, isActive)
    }
    public static func top(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__topAnchor(view.topAnchor, offset, priority, isActive)
    }
    public static func top(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__topAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Left
    public static func left(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__left(offset, priority, isActive)
    }
    public static func left(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leftAnchor(view.leftAnchor, offset, priority, isActive)
    }
    public static func left(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leftAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Leading
    public static func leading(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leading(offset, priority, isActive)
    }
    public static func leading(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leadingAnchor(view.leadingAnchor, offset, priority, isActive)
    }
    public static func leading(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leadingAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Bottom
    public static func bottom(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottom(offset, priority, isActive)
    }
    public static func bottom(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottomAnchor(view.bottomAnchor, offset, priority, isActive)
    }
    public static func bottom(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottomAnchor(anchor, offset, priority, isActive)
    }
    public static func bottomGreaterOrEqual(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottomGreaterOrEqual(offset, priority, isActive)
    }
    // MARK: Right
    public static func right(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__right(offset, priority, isActive)
    }
    public static func right(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__rightAnchor(view.rightAnchor, offset, priority, isActive)
    }
    public static func right(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__rightAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Trailing
    public static func trailing(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__trailing(offset, priority, isActive)
    }
    public static func trailing(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__trailingAnchor(view.trailingAnchor, offset, priority, isActive)
    }
    public static func trailing(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__trailingAnchor(anchor, offset, priority, isActive)
    }
}

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <EDGES> (Constraints)
    @discardableResult
    public func rk_alEdge(_ values: RKConstraintEDGE..., isActive: Bool = true) -> RKConstraints {
        return rk_alEdge(with: values, isActive: isActive)
    }

    @discardableResult
    func rk_alEdge(with values: [RKConstraintEDGE], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        guard let storage = constraintsStorage else {
            assertionFailure("rk_alEdge: constraintsStorage should not be nil!")
            return []
        }

        guard let superview = superview else {
            assertionFailure("rk_alEdge: superview should not be nil!")
            return []
        }

        var constraints: RKConstraints = []
        var constraint: RKConstraint!
        for value in values {
            switch value {
            // top
            case .__top(let offset, let priority, let active):
                constraint = topAnchor.constraint(equalTo: superview.topAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeTopConstraints.append(constraint)
            case .__topAnchor(let anchor, let offset, let priority, let active):
                constraint = topAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeTopConstraints.append(constraint)

            // left
            case .__left(let offset, let priority, let active):
                constraint = leftAnchor.constraint(equalTo: superview.leftAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeLeftConstraints.append(constraint)
            case .__leftAnchor(let anchor, let offset, let priority, let active):
                constraint = leftAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeLeftConstraints.append(constraint)

            // leading
            case .__leading(let offset, let priority, let active):
                constraint = leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeLeadingConstraints.append(constraint)
            case .__leadingAnchor(let anchor, let offset, let priority, let active):
                constraint = leadingAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeLeadingConstraints.append(constraint)

            // bottom
            case .__bottom(let offset, let priority, let active):
                constraint = bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeBottomConstraints.append(constraint)
            case .__bottomGreaterOrEqual(let offset, let priority, let active):
                constraint = superview.bottomAnchor.constraint(greaterThanOrEqualTo: bottomAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeBottomConstraints.append(constraint)
            case .__bottomAnchor(let anchor, let offset, let priority, let active):
                constraint = bottomAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeBottomConstraints.append(constraint)
            // right
            case .__right(let offset, let priority, let active):
                constraint = rightAnchor.constraint(equalTo: superview.rightAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeRightConstraints.append(constraint)
            case .__rightAnchor(let anchor, let offset, let priority, let active):
                constraint = rightAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeRightConstraints.append(constraint)

            // trailing
            case .__trailing(let offset, let priority, let active):
                constraint = trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeTrailingConstraints.append(constraint)
            case .__trailingAnchor(let anchor, let offset, let priority, let active):
                constraint = trailingAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: active && isActive)
                storage.edgeTrailingConstraints.append(constraint)
            }

            constraints.append(constraint)
        }

        return constraints
    }

    /// Constraints for edges superview bounds
    @discardableResult
    public func rk_alEdgeSuperViewBounds(isActive: Bool = true) -> RKConstraints {
        return self.rk_alEdge(.top(0), .left(0), .bottom(0), .right(0), isActive: isActive)
    }
}
