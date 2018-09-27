import Foundation
import UIKit

@available (iOS 9, *)
class RKConstraintHeightBuilder: RKConstraintBaseBuilder<NSLayoutDimension>, RKConstraintBuilder {
    func build(withView view: UIView, isActive: Bool) -> RKConstraint {
        guard let superview = view.superview else { fatalError("rk_alCenter: superview should not be nil!") }

        let constraint: RKConstraint
        if let anchor = self.anchor {
            constraint = view.heightAnchor.constraint(equalTo: anchor, multiplier: value)
        } else {
            constraint = view.heightAnchor.constraint(equalToConstant: value)
        }

        return constraint.set(priority: priority).set(active: self.isActive && isActive)
    }
}
