import UIKit
import ObjectiveC

public typealias RKConstraint = NSLayoutConstraint
public typealias RKConstraints = [RKConstraint]

// MARK: -
@available (iOS 9, *)
public extension Array where Element: RKConstraint {
    // MARK: - RKAL (Constraints)

    /// Активировать все ограничения
    public func activate() {
        NSLayoutConstraint.activate(self)
    }

    /// Деактивировать все ограничения
    public func deactivate() {
        NSLayoutConstraint.deactivate(self)
    }

    /// Удалить все ограничения
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

    /// Удалить ограничение
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
public struct RKConstraintPriority {
    public static let high = RKConstraintPriority(value: .defaultHigh)
    public static let low = RKConstraintPriority(value: .defaultLow)
    public static let required = RKConstraintPriority(value: .required)

    public let value: UILayoutPriority

    public static func custom(_ value: Float) -> RKConstraintPriority {
        return .init(value: UILayoutPriority(rawValue: value))
    }
}

@available (iOS 9, *)
extension RKConstraint {
    /// Установка приоритета
    ///
    /// - Parameter priority: Приоритет
    /// - Returns: RKConstraint
    func set(priority: RKConstraintPriority) -> Self {
        self.priority = priority.value
        return self
    }

    /// Установить значение активности
    ///
    /// - Parameter active: Включено ограничение или нет
    /// - Returns: RKConstraint
    func set(active: Bool) -> Self {
        isActive = active
        return self
    }
}
