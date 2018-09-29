import UIKit

@available (iOS 9, *)
public enum RKConstraintEDGE {
    /// :nodoc:
    case __top(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __topAnchor(NSLayoutYAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __left(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __leftAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __leading(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __leadingAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __bottom(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __bottomGreaterOrEqual(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __bottomAnchor(NSLayoutYAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __right(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __rightAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __trailing(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __trailingAnchor(NSLayoutXAxisAnchor, CGFloat, RKConstraintPriority, Bool)

    // MARK: Top
    public static func top(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__top(offset, priority, isActive)
    }
    public static func top(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__topAnchor(view.topAnchor, offset, priority, isActive)
    }
    public static func top(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__topAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Left
    public static func left(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__left(offset, priority, isActive)
    }
    public static func left(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leftAnchor(view.leftAnchor, offset, priority, isActive)
    }
    public static func left(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leftAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Leading
    public static func leading(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leading(offset, priority, isActive)
    }
    public static func leading(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leadingAnchor(view.leadingAnchor, offset, priority, isActive)
    }
    public static func leading(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__leadingAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Bottom
    public static func bottom(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottom(offset, priority, isActive)
    }
    public static func bottom(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottomAnchor(view.bottomAnchor, offset, priority, isActive)
    }
    public static func bottom(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottomAnchor(anchor, offset, priority, isActive)
    }
    public static func bottomGreaterOrEqual(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__bottomGreaterOrEqual(offset, priority, isActive)
    }
    // MARK: Right
    public static func right(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__right(offset, priority, isActive)
    }
    public static func right(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__rightAnchor(view.rightAnchor, offset, priority, isActive)
    }
    public static func right(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__rightAnchor(anchor, offset, priority, isActive)
    }
    // MARK: Trailing
    public static func trailing(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__trailing(offset, priority, isActive)
    }
    public static func trailing(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__trailingAnchor(view.trailingAnchor, offset, priority, isActive)
    }
    public static func trailing(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        return .__trailingAnchor(anchor, offset, priority, isActive)
    }
}
