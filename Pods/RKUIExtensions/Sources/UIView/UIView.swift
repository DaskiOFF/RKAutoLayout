import UIKit

public extension UIView {
    // MARK: - Corners Radius
    /// Скругление углов UIView
    ///
    /// - Parameters:
    ///   - cornerRadius: Радиус скругления
    ///   - corners: Какие углы закрыгляем
    public func roundCorners(cornerRadius: CGFloat, corners: UIRectCorner) {
        self.clipsToBounds = true
        if corners == .allCorners {
            self.layer.cornerRadius = cornerRadius
            return
        }

        if #available(iOS 11, *) {
            self.layer.cornerRadius = cornerRadius
            self.layer.maskedCorners = []
            if corners.contains(.topLeft) { self.layer.maskedCorners.formUnion(.layerMinXMinYCorner) }
            if corners.contains(.bottomLeft) { self.layer.maskedCorners.formUnion(.layerMinXMaxYCorner) }
            if corners.contains(.topRight) { self.layer.maskedCorners.formUnion(.layerMaxXMinYCorner) }
            if corners.contains(.bottomRight) { self.layer.maskedCorners.formUnion(.layerMaxXMaxYCorner) }
        } else {
            let path = UIBezierPath(roundedRect: bounds,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
            let maskLayer = CAShapeLayer()
            maskLayer.frame = bounds
            maskLayer.path = path.cgPath
            layer.mask = maskLayer
        }
    }

}
