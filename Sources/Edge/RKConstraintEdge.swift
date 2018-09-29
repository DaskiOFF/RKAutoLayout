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
    public static func top(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: view.topAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Min
    public static func top(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: view.topAnchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Max
    public static func top(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: view.topAnchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Left
    public static func left(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: view.leftAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Min
    public static func left(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: view.leftAnchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Max
    public static func left(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: view.leftAnchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Leading
    public static func leading(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: view.leadingAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Min
    public static func leading(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: view.leadingAnchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Max
    public static func leading(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: view.leadingAnchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Bottom
    public static func bottom(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: view.bottomAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Min
    @available(*, deprecated, message: "RKConstraintEdge.bottomGreaterOrEqual will be removed in a future major lib version. Use RKConstraintEdge.bottom(min:...)")
    public static func bottomGreaterOrEqual(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        return RKConstraintEdge.bottom(min: offset, priority: priority, isActive: isActive)
    }

    public static func bottom(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: view.bottomAnchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Max
    public static func bottom(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: view.bottomAnchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Right
    public static func right(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: view.rightAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Min
    public static func right(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: view.rightAnchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Max
    public static func right(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: view.rightAnchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Trailing
    public static func trailing(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: view.trailingAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Min
    public static func trailing(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: view.trailingAnchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: Max
    public static func trailing(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: view.trailingAnchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEdge {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
}
