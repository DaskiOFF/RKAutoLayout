import UIKit

public typealias RKConstraintEDGE = RKConstraintEdge

@available (iOS 9, *)
public struct RKConstraintEdge {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - Top
    public static func top(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintTopBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintTopBuilder(anchor: view.topAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func top(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintTopBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Left
    public static func left(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintLeftBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintLeftBuilder(anchor: view.leftAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func left(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintLeftBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Leading
    public static func leading(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintLeadingBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintLeadingBuilder(anchor: view.leadingAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func leading(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintLeadingBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Bottom
    public static func bottom(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintBottomBuilder(anchor: view.bottomAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottom(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintBottomBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func bottomGreaterOrEqual(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        // TODO RK: Реализации нет
        let builder = RKConstraintBottomBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Right
    public static func right(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintRightBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintRightBuilder(anchor: view.rightAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func right(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintRightBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }

    // MARK: - Trailing
    public static func trailing(_ offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintTrailingBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintTrailingBuilder(anchor: view.trailingAnchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
    public static func trailing(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintEDGE {
        let builder = RKConstraintTrailingBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintEdge(builder: builder)
    }
}
