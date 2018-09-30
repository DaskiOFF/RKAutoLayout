import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <Baseline> (Constraints)

    /// Add baseline constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintBaseline
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alBaseline(.firstBaseline(10), .lastBaseline(min: otherView))
    ///     view.rk_alBaseline(.firstBaseline(10), .lastBaseline(max: otherView), isActive: false)
    @discardableResult
    public func rk_alBaseline(_ values: RKConstraintBaseline..., isActive: Bool = true) -> RKConstraints {
        return rk_alBaseline(with: values, isActive: isActive)
    }

    /// Add baseline constraints
    ///
    /// - Parameters:
    ///   - values: List RKConstraintBaseline
    ///   - isActive: true, if constraints must be activated, otherwise false
    /// - Returns: RKConstraints
    ///
    /// Example:
    ///
    ///     view.rk_alBaseline(with: [.firstBaseline(10), .lastBaseline(min: otherView)])
    ///     view.rk_alBaseline(with: [.firstBaseline(10), .lastBaseline(max: otherView)], isActive: false)
    @discardableResult
    func rk_alBaseline(with values: [RKConstraintBaseline], isActive: Bool = true) -> RKConstraints {
        guard !values.isEmpty else { return [] }
        translatesAutoresizingMaskIntoConstraints = false

        var constraints: RKConstraints = []
        for value in values {
            let constraint = value.builder.build(withView: self, isActive: isActive)

            constraints.append(constraint)
            if value.builder is RKConstraintFirstBaselineBuilder {
                constraintsStorage.firstBaselineConstraints.append(constraint)
            } else {
                constraintsStorage.lastBaselineConstraints.append(constraint)
            }
        }

        return constraints
    }
}

@available (iOS 9, *)
public extension UIView {
    // MARK: - Remove <Baseline>

    /// Remove all baseline constraints
    public func rk_alRemoveBaselineConstraints() {
        rk_alRemoveFirstBaselineConstraints()
        rk_alRemoveLastBaselineConstraints()
    }

    /// Remove all firstBaseline constraints
    public func rk_alRemoveFirstBaselineConstraints() {
        constraintsStorage.firstBaselineConstraints.removeAllConstraints()
    }

    /// Remove all lastBaseline constraints
    public func rk_alRemoveLastBaselineConstraints() {
        constraintsStorage.lastBaselineConstraints.removeAllConstraints()
    }
}
