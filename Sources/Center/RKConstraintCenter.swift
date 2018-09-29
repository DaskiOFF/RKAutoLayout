import Foundation
import UIKit

@available (iOS 9, *)
public struct RKConstraintCenter {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - Center X
    public static func centerX(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerX(view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func centerX(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerX(min: view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func centerX(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerX(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerX(max: view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Center Y
    public static func centerY(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerY(view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func centerY(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerY(min: view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func centerY(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }
    public static func centerY(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerY(max: view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
    }
}
