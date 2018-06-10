import UIKit
import ObjectiveC

public typealias RKConstraint = NSLayoutConstraint
public typealias RKConstraints = [RKConstraint]

// MARK: -
@available (iOS 9, *)
public extension Array where Element: RKConstraint {
    // MARK: - RKAL (Constraints)
    public func activate() {
        NSLayoutConstraint.activate(self)
    }

    public func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }

    public mutating func removeAllConstraints() {
        for c in self {
            c.removeFromView()
        }

        self.removeAll()
    }
}

@available (iOS 9, *)
public extension NSLayoutConstraint {
    // MARK: - RKAL (Constraints)
    public func removeFromView() {
        if let view = firstItem as? UIView {
            view.removeConstraint(self)
            view.superview?.removeConstraint(self)
        }
        if let view = secondItem as? UIView {
            view.removeConstraint(self)
            view.superview?.removeConstraint(self)
        }
    }
}

@available (iOS 9, *)
public enum RKConstraintPriority {
    case high
    case low
    case required
    case custom(Float)

    public var value: UILayoutPriority {
        switch self {
        case .high: return UILayoutPriority.defaultHigh
        case .low: return UILayoutPriority.defaultLow
        case .required: return UILayoutPriority.required
        case .custom(let v): return UILayoutPriority(v)
        }
    }
}

@available (iOS 9, *)
extension RKConstraint {
    func set(priority: RKConstraintPriority) -> Self {
        self.priority = priority.value
        return self
    }

    func set(active: Bool) -> Self {
        isActive = active
        return self
    }
}
