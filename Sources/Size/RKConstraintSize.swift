import UIKit

@available (iOS 9, *)
public struct RKConstraintSize {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - Width
    public static func width(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: dimension, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintSize.width(view.widthAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func width(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(min dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: dimension, value: multiplier, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(min view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintSize.width(min: view.widthAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func width(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(max dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintWidthBuilder(anchor: dimension, value: multiplier, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func width(max view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintSize.width(max: view.widthAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: - Height
    public static func height(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(_ dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: dimension, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintSize.height(view.heightAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func height(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(min dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: dimension, value: multiplier, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(min view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintSize.height(min: view.heightAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func height(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(max dimension: NSLayoutDimension, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintHeightBuilder(anchor: dimension, value: multiplier, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func height(max view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintSize.height(max: view.heightAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }
}
