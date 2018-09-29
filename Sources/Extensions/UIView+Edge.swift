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

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            if value.builder is RKConstraintTopBuilder {
                storage.edgeTopConstraints.append(constraint)
            } else if value.builder is RKConstraintLeftBuilder {
                storage.edgeLeftConstraints.append(constraint)
            } else if value.builder is RKConstraintBottomBuilder {
                storage.edgeBottomConstraints.append(constraint)
            } else if value.builder is RKConstraintRightBuilder {
                storage.edgeRightConstraints.append(constraint)
            } else if value.builder is RKConstraintLeadingBuilder {
                storage.edgeLeadingConstraints.append(constraint)
            } else {
                storage.edgeTrailingConstraints.append(constraint)
            }
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
