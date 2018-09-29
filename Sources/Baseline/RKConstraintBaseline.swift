import UIKit

@available (iOS 9, *)
public struct RKConstraintBaseline {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - FirstBaseline
    public static func firstBaseline(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintFirstBaselineBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func firstBaseline(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintFirstBaselineBuilder(anchor: anchor, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func firstBaseline(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintBaseline.firstBaseline(view.firstBaselineAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func firstBaseline(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintFirstBaselineBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func firstBaseline(min anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintFirstBaselineBuilder(anchor: anchor, value: multiplier, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func firstBaseline(min view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintBaseline.firstBaseline(min: view.firstBaselineAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func firstBaseline(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintFirstBaselineBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func firstBaseline(max anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintFirstBaselineBuilder(anchor: anchor, value: multiplier, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func firstBaseline(max view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintBaseline.firstBaseline(max: view.firstBaselineAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: - LastBaseline
    public static func lastBaseline(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintLastBaselineBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func lastBaseline(_ anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintLastBaselineBuilder(anchor: anchor, value: multiplier, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func lastBaseline(_ view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintBaseline.lastBaseline(view.lastBaselineAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func lastBaseline(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintLastBaselineBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func lastBaseline(min anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintLastBaselineBuilder(anchor: anchor, value: multiplier, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func lastBaseline(min view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintBaseline.lastBaseline(min: view.lastBaselineAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func lastBaseline(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintLastBaselineBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func lastBaseline(max anchor: NSLayoutYAxisAnchor, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        let builder = RKConstraintLastBaselineBuilder(anchor: anchor, value: multiplier, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintSize(builder: builder)
    }
    public static func lastBaseline(max view: UIView, multiplier: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintSize {
        return RKConstraintBaseline.lastBaseline(max: view.lastBaselineAnchor, multiplier: multiplier, priority: priority, isActive: isActive)
    }
}
