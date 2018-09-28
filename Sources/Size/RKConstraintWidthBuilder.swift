import Foundation
import UIKit

@available (iOS 9, *)
class RKConstraintWidthBuilder: RKConstraintBaseBuilder<NSLayoutDimension>, RKConstraintBuilder {
    let relation: NSLayoutRelation

    init(anchor: NSLayoutDimension?, value: CGFloat, relation: NSLayoutRelation, priority: RKConstraintPriority, isActive: Bool) {
        self.relation = relation

        super.init(anchor: anchor, value: value, priority: priority, isActive: isActive)
    }

    // MARK: - RKConstraintBuilder
    func build(withView view: UIView, isActive: Bool) -> RKConstraint {
        let baseAnchor = view.widthAnchor
        let constraint: RKConstraint
        if let anchor = self.anchor {
            switch relation {
            case .equal:
                constraint = baseAnchor.constraint(equalTo: anchor, multiplier: value)
            case .lessThanOrEqual:
                constraint = baseAnchor.constraint(lessThanOrEqualTo: anchor, multiplier: value)
            case .greaterThanOrEqual:
                constraint = baseAnchor.constraint(greaterThanOrEqualTo: anchor, multiplier: value)
            }
        } else {
            switch relation {
            case .equal:
                constraint = baseAnchor.constraint(equalToConstant: value)
            case .lessThanOrEqual:
                constraint = baseAnchor.constraint(lessThanOrEqualToConstant: value)
            case .greaterThanOrEqual:
                constraint = baseAnchor.constraint(greaterThanOrEqualToConstant: value)
            }
        }

        return constraint.set(priority: priority).set(active: self.isActive && isActive)
    }
}
