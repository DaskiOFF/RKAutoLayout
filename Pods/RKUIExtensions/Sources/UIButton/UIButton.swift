import UIKit

public extension UIButton {
    /// Установка цвета для разных состояний кнопки
    ///
    /// Для фона нормального состояния устанавливается переданный цвет, для состояний
    /// Highlighted и Selected: переданный цвет с 50% прозрачности
    /// Disabled: переданный цвет с 15% прозрачности
    ///
    /// - Parameter color: Устанавливаемый цвет для нормального состояния
    public func adjustColor(_ color: UIColor) {
        setBackground(color: color, for: .normal)
        setBackground(color: color.withAlphaComponent(0.5), for: .highlighted)
        setBackground(color: color.withAlphaComponent(0.5), for: .selected)
        setBackground(color: color.withAlphaComponent(0.15), for: .disabled)
    }

    public func setBackground(color: UIColor, for state: UIControlState) {
        self.setBackgroundImage(UIImage.from(color: color), for: state)
    }
}
