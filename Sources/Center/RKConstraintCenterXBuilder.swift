import Foundation
import UIKit

@available (iOS 9, *)
class RKConstraintCenterXBuilder: RKConstraintBaseBuilder<NSLayoutXAxisAnchor>, RKConstraintBuilder {
    func build(withView view: UIView, isActive: Bool) -> RKConstraint {
        guard let superview = view.superview else { fatalError("rk_alCenter: superview should not be nil!") }

        let anchor = self.anchor ?? superview.centerXAnchor
        return view.centerXAnchor.constraint(equalTo: anchor, constant: offset).set(priority: priority).set(active: self.isActive && isActive)
    }
}
