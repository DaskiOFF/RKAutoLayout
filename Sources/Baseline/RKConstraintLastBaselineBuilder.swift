import Foundation
import UIKit

@available (iOS 9, *)
class RKConstraintLastBaselineBuilder: RKConstraintBaseBuilder<NSLayoutYAxisAnchor>, RKConstraintBuilder {
    func build(withView view: UIView, isActive: Bool) -> RKConstraint {
        guard let superview = view.superview else { fatalError("rk_alLastBaseline: superview should not be nil!") }

        let baseAnchor = view.lastBaselineAnchor
        let anchor = self.anchor ?? superview.lastBaselineAnchor
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = baseAnchor.constraint(equalTo: anchor, constant: value)
        case .lessThanOrEqual:
            constraint = baseAnchor.constraint(lessThanOrEqualTo: anchor, constant: value)
        case .greaterThanOrEqual:
            constraint = baseAnchor.constraint(greaterThanOrEqualTo: anchor, constant: value)
        }

        return constraint.set(priority: priority).set(active: self.isActive && isActive)
    }
}
