import Foundation
import UIKit

@available (iOS 9, *)
class RKConstraintVerticalBuilder: RKConstraintBaseBuilder<NSLayoutYAxisAnchor>, RKConstraintBuilder {
    func build(withView view: UIView, isActive: Bool) -> RKConstraint {
        guard let superview = view.superview else { fatalError("rk_alEdgeVertical: superview should not be nil!") }

        let anchor = self.anchor ?? superview.centerYAnchor
        return view.centerYAnchor.constraint(equalTo: anchor, constant: value).set(priority: priority).set(active: self.isActive && isActive)
    }
}
