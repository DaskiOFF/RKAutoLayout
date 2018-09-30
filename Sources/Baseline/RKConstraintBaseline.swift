import UIKit

@available (iOS 9, *)
public struct RKConstraintBaseline {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - FirstBaseline

    /// Create 'equal' constraint between firstBaselineAnchor of current view and firstBaselineAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintFirstBaselineBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'equal' constraint between firstBaselineAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintFirstBaselineBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'equal' constraint between firstBaselineAnchor of current view and firstBaselineAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(_ view: UIView, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        return RKConstraintBaseline.firstBaseline(view.firstBaselineAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min

    /// Create 'greaterThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintFirstBaselineBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between firstBaselineAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintFirstBaselineBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(min view: UIView, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        return RKConstraintBaseline.firstBaseline(min: view.firstBaselineAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max

    /// Create 'lessThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintFirstBaselineBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between firstBaselineAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintFirstBaselineBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func firstBaseline(max view: UIView, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        return RKConstraintBaseline.firstBaseline(max: view.firstBaselineAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - LastBaseline

    /// Create 'equal' constraint between firstBaselineAnchor of current view and firstBaselineAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(_ constant: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintLastBaselineBuilder(anchor: nil, value: constant, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'equal' constraint between firstBaselineAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintLastBaselineBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'equal' constraint between firstBaselineAnchor of current view and firstBaselineAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(_ view: UIView, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        return RKConstraintBaseline.lastBaseline(view.lastBaselineAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min

    /// Create 'greaterThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(min: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintLastBaselineBuilder(anchor: nil, value: min, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between firstBaselineAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintLastBaselineBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(min view: UIView, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        return RKConstraintBaseline.lastBaseline(min: view.lastBaselineAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max

    /// Create 'lessThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(max: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintLastBaselineBuilder(anchor: nil, value: max, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between firstBaselineAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        let builder = RKConstraintLastBaselineBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintBaseline(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between firstBaselineAnchor of current view and firstBaselineAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority
    ///   - isActive: true, if constraint must be activated, otherwise false
    /// - Returns: RKConstraintBaseline
    public static func lastBaseline(max view: UIView, offset: CGFloat = 1.0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintBaseline {
        return RKConstraintBaseline.lastBaseline(max: view.lastBaselineAnchor, offset: offset, priority: priority, isActive: isActive)
    }
}
