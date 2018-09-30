import UIKit

@available(*, deprecated, message: "RKConstraintEDGE will be removed in a future lib version. Use RKConstraintEdge")
public typealias RKConstraintEDGE = RKConstraintEdge

@available (iOS 9, *)
public struct RKConstraintEdge {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - Top
    public static func top(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.top(view.topAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func top(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.top(min: view.topAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func top(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.top(max: view.topAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Left
    public static func left(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.left(view.leftAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func left(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.left(min: view.leftAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func left(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.left(max: view.leftAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Leading
    public static func leading(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.leading(view.leadingAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func leading(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.leading(min: view.leadingAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func leading(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.leading(max: view.leadingAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Bottom
    public static func bottom(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.bottom(view.bottomAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    @available(*, deprecated, message: "RKConstraintEdge.bottomGreaterOrEqual will be removed in a future lib version. Use RKConstraintEdge.bottom(min:...)")
    public static func bottomGreaterOrEqual(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.bottom(min: offset, priority: priority, isActive: isActive)
    }

    public static func bottom(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.bottom(min: view.bottomAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func bottom(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.bottom(max: view.bottomAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Right
    public static func right(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.right(view.rightAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func right(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.right(min: view.rightAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func right(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.right(max: view.rightAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Trailing
    public static func trailing(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.trailing(view.trailingAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min
    public static func trailing(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.trailing(min: view.trailingAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max
    public static func trailing(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.trailing(max: view.trailingAnchor, offset: offset, priority: priority, isActive: isActive)
    }
}
