import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <EDGES> (Constraints)

    /// Add edge constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintEdge
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alEdge(.top(10), .bottom(0))
    ///     view.rk_alEdge(.top(10), .bottom(-90), isActive: false)
    @discardableResult
    public func rk_alEdge(_ values: RKConstraintEdge..., isActive: Bool = true) -> RKConstraints {
        return rk_alEdge(with: values, isActive: isActive)
    }

    /// Add edge constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintEdge
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alEdge(with: [.top(10), .bottom(0)])
    ///     view.rk_alEdge(with: [.top(10), .bottom(-90)], isActive: false)
    @discardableResult
    func rk_alEdge(with values: [RKConstraintEdge], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            switch value.builder {
            case is RKConstraintTopBuilder:
                constraintsStorage.edgeTopConstraints.append(constraint)
            case is RKConstraintLeftBuilder:
                constraintsStorage.edgeLeftConstraints.append(constraint)
            case is RKConstraintBottomBuilder:
                constraintsStorage.edgeBottomConstraints.append(constraint)
            case is RKConstraintRightBuilder:
                constraintsStorage.edgeRightConstraints.append(constraint)
            case is RKConstraintLeadingBuilder:
                constraintsStorage.edgeLeadingConstraints.append(constraint)
            case is RKConstraintTrailingBuilder:
                constraintsStorage.edgeTrailingConstraints.append(constraint)
            default:
                fatalError()
            }
        }

        return constraints
    }


    /// Add edges superview bounds
    ///
    /// - Parameter isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    @discardableResult
    public func rk_alEdgeSuperViewBounds(isActive: Bool = true) -> RKConstraints {
        return self.rk_alEdge(.top(0), .left(0), .bottom(0), .right(0), isActive: isActive)
    }
}

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove <EDGES>

    /// Remove all edge constraints
    public func rk_alRemoveAllEdgeConstraints() {
        rk_alRemoveTopConstraints()
        rk_alRemoveLeftConstraints()
        rk_alRemoveBottomConstraints()
        rk_alRemoveRightConstraints()
        rk_alRemoveLeadingConstraints()
        rk_alRemoveTrailingConstraints()
    }

    /// Remove all top constraints
    public func rk_alRemoveTopConstraints() {
        constraintsStorage.edgeTopConstraints.removeAllConstraints()
    }

    /// Remove all left constraints
    public func rk_alRemoveLeftConstraints() {
        constraintsStorage.edgeLeftConstraints.removeAllConstraints()
    }

    /// Remove all bottom constraints
    public func rk_alRemoveBottomConstraints() {
        constraintsStorage.edgeBottomConstraints.removeAllConstraints()
    }

    /// Remove all right constraints
    public func rk_alRemoveRightConstraints() {
        constraintsStorage.edgeRightConstraints.removeAllConstraints()
    }

    /// Remove all leading constraints
    public func rk_alRemoveLeadingConstraints() {
        constraintsStorage.edgeLeadingConstraints.removeAllConstraints()
    }

    /// Remove all trailing constraints
    public func rk_alRemoveTrailingConstraints() {
        constraintsStorage.edgeTrailingConstraints.removeAllConstraints()
    }
}
