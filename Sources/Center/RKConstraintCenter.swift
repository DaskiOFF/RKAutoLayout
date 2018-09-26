import Foundation
import UIKit

@available (iOS 9, *)
public struct RKConstraintCenter {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // Center X
    public static func centerX(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, offset: offset, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, offset: offset, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    // Center Y
    public static func centerY(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, offset: offset, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, offset: offset, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
}
