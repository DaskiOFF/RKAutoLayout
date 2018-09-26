import Foundation
import UIKit

@available (iOS 9, *)
protocol RKConstraintBuilder: class {
    func build(withView view: UIView, isActive: Bool) -> RKConstraint
}

class RKConstraintBaseBuilder<AnchorType> {
    let anchor: AnchorType?
    let offset: CGFloat
    let priority: RKConstraintPriority
    let isActive: Bool

    init(anchor: AnchorType?, offset: CGFloat, priority: RKConstraintPriority, isActive: Bool) {
        self.anchor = anchor
        self.offset = offset
        self.priority = priority
        self.isActive = isActive
    }
}
