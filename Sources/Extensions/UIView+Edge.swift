import UIKit

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

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove <EDGES>
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
