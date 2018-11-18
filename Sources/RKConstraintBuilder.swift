import Foundation
import UIKit

@available (iOS 9, *)
protocol RKConstraintBuilder: class {
    func build(withView view: UIView, isActive: Bool) -> RKConstraint
}

class RKConstraintBaseBuilder<AnchorType: NSObject> {
    let anchor: AnchorType?
    let value: CGFloat
    let relation: LayoutRelation
    let priority: RKConstraintPriority
    let isActive: Bool

    init(
      anchor: AnchorType?,
      value: CGFloat,
      relation: LayoutRelation,
      priority: RKConstraintPriority,
      isActive: Bool) {
        self.anchor = anchor
        self.value = value
        self.relation = relation
        self.priority = priority
        self.isActive = isActive
    }
}
