import UIKit

@available (iOS 9, *)
public enum RKConstraintSize: Hashable, Equatable {
    /// :nodoc:
    case __widthPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __widthDimensionPriorityActive(NSLayoutDimension, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __widthMinPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __widthMaxPriorityActive(CGFloat, RKConstraintPriority, Bool)

    /// :nodoc:
    case __heightPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __heightDimensionPriorityActive(NSLayoutDimension, CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __heightMinPriorityActive(CGFloat, RKConstraintPriority, Bool)
    /// :nodoc:
    case __heightMaxPriorityActive(CGFloat, RKConstraintPriority, Bool)

    /// :nodoc:
    public var hashValue: Int {
        switch self {
        case .__widthPriorityActive(_, _, _), .__widthDimensionPriorityActive(_, _, _, _): return 1
        case .__widthMinPriorityActive(_, _, _): return 2
        case .__widthMaxPriorityActive(_, _, _): return 3
        case .__heightPriorityActive(_, _, _), .__heightDimensionPriorityActive(_, _, _, _): return 4
        case .__heightMinPriorityActive(_, _, _): return 5
        case .__heightMaxPriorityActive(_, _, _): return 6
        }
    }

    /// :nodoc:
    public static func == (lhs: RKConstraintSize, rhs: RKConstraintSize) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }

    // MARK: Width
    public static func width(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthPriorityActive(constant, priority, isActive)
    }
    public static func width(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthDimensionPriorityActive(dimension, multiplier, priority, isActive)
    }
    public static func width(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .width(view.widthAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }
    public static func width(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthMinPriorityActive(min, priority, isActive)
    }
    public static func width(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__widthMaxPriorityActive(max, priority, isActive)
    }

    // MARK: Height
    public static func height(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightPriorityActive(constant, priority, isActive)
    }
    public static func height(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightDimensionPriorityActive(dimension, multiplier, priority, isActive)
    }
    public static func height(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .height(view.heightAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }
    public static func height(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightMinPriorityActive(min, priority, isActive)
    }
    public static func height(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return .__heightMaxPriorityActive(max, priority, isActive)
    }
}
