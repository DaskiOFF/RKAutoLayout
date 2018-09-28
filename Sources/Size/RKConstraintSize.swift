import UIKit

@available (iOS 9, *)
public struct RKConstraintSize {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: Width
    public static func width(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: dimension, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: view.widthAnchor, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }

    // MARK: Height
    public static func height(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: dimension, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: view.heightAnchor, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
}
