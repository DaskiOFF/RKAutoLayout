import UIKit

@available (iOS 9, *)
public extension UIView {
    // MARK: RKAL <Baseline> (Constraints)
    @discardableResult
    public func rk_alBaseline(_ values: RKConstraintBaseline..., isActive: Bool = true) -> RKConstraints {
        return rk_alBaseline(with: values, isActive: isActive)
    }

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
    public func rk_alRemoveBaselineConstraints() {
        rk_alRemoveFirstBaselineConstraints()
        rk_alRemoveLastBaselineConstraints()
    }
    public func rk_alRemoveFirstBaselineConstraints() {
        constraintsStorage.firstBaselineConstraints.removeAllConstraints()
    }

    public func rk_alRemoveLastBaselineConstraints() {
        constraintsStorage.lastBaselineConstraints.removeAllConstraints()
    }
}
