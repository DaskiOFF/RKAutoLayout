import Foundation
import UIKit

@available (iOS 9, *)
public struct RKConstraintCenter {
    var builder: RKConstraintBuilder

    init(builder: RKConstraintBuilder) {
        self.builder = builder
    }

    // MARK: - Center X

    /// Create 'equal' constraint between centerXAnchor of current view and centerXAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'equal' constraint between centerXAnchor of current view and specific NSLayoutXAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutXAxisAnchor
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(_ anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'equal' constraint between centerXAnchor of current view and centerXAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerX(view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min

    /// Create 'greaterThanOrEqual' constraint between centerXAnchor of current view and centerXAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between centerXAnchor of current view and specific NSLayoutXAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutXAxisAnchor
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(min anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between centerXAnchor of current view and centerXAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerX(min: view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max

    /// Create 'lessThanOrEqual' constraint between centerXAnchor of current view and centerXAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between centerXAnchor of current view and specific NSLayoutXAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutXAxisAnchor
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(max anchor: NSLayoutXAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterXBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between centerXAnchor of current view and centerXAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerX(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerX(max: view.centerXAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: - Center Y

    /// Create 'equal' constraint between centerYAnchor of current view and centerYAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(_ offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'equal' constraint between centerYAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(_ anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, value: offset, relation: .equal, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'equal' constraint between centerYAnchor of current view and centerYAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(_ view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerY(view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Min

    /// Create 'greaterThanOrEqual' constraint between centerYAnchor of current view and centerYAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(min offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between centerYAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(min anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, value: offset, relation: .greaterThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'greaterThanOrEqual' constraint between centerYAnchor of current view and centerYAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(min view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerY(min: view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
    }

    // MARK: Max

    /// Create 'lessThanOrEqual' constraint between centerYAnchor of current view and centerYAnchor of superview
    ///
    /// - Parameters:
    ///   - offset: Constraint constant
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(max offset: CGFloat, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: nil, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between centerYAnchor of current view and specific NSLayoutYAxisAnchor
    ///
    /// - Parameters:
    ///   - anchor: Specific NSLayoutYAxisAnchor
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(max anchor: NSLayoutYAxisAnchor, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        let builder = RKConstraintCenterYBuilder(anchor: anchor, value: offset, relation: .lessThanOrEqual, priority: priority, isActive: isActive)
        return RKConstraintCenter(builder: builder)
    }

    /// Create 'lessThanOrEqual' constraint between centerYAnchor of current view and centerYAnchor other view
    ///
    /// - Parameters:
    ///   - view: Other view
    ///   - offset: Constraint constant. Default 0
    ///   - priority: Constraint priority. Default .required
    ///   - isActive: true, if constraint must be activated, otherwise false. Default true
    /// - Returns: RKConstraintCenter
    public static func centerY(max view: UIView, offset: CGFloat = 0, priority: RKConstraintPriority = .required, isActive: Bool = true) -> RKConstraintCenter {
        return RKConstraintCenter.centerY(max: view.centerYAnchor, offset: offset, priority: priority, isActive: isActive)
    }
}
