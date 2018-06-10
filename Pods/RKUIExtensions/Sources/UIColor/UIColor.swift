import UIKit

public extension UIColor {
    // MARK: - From Int
    /// Получить цвет согласно RGB (значения от 0 до 255), alpha от 0 до 1
    ///
    /// - parameter r: red 0 -> 255
    /// - parameter g: green 0 -> 255
    /// - parameter b: blue 0 -> 255
    /// - parameter a: alpha 0.0 -> 1.0
    ///
    /// - returns: UIColor
    public class func from(_ r: Int, g: Int, b: Int, _ a: CGFloat) -> UIColor {
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: a)
    }
    
    /// Получить цвет согласно HEX значению представленному в виде 0xRRGGBB
    ///
    /// - parameter hex: hex color Int 0x0 -> 0xffffff
    /// - parameter a:   alpha 0.0 -> 1.0
    ///
    /// - returns: UIColor
    public class func from(_ hex: Int, _ a: CGFloat) -> UIColor {
        let r = (hex & 0xFF0000) >> 16
        let g = (hex & 0xFF00) >> 8
        let b = hex & 0xFF
        
        return UIColor.from(r, g: g, b: b, a)
    }
    
    // MARK: - From string
    /// Получить цвет согласно HEX значению представленному в виде "#RRGGBB" или "#RGB"
    ///
    /// - parameter hex: hex color String "#000" -> "#FFFFFF"
    /// - parameter a:   alpha 0.0 -> 1.0
    ///
    /// - returns: UIColor
    public class func from(_ hex: String, _ a: CGFloat) -> UIColor {
        let defaultColor = UIColor.purple
        
        guard hex.hasPrefix("#") && hex.count > 1 else { return defaultColor }
        var hex = String(hex[hex.index(after: hex.startIndex)...])
        
        guard hex.count == 3 || hex.count == 6 else { return defaultColor }
        let componentLength = hex.count == 3 ? 1 : 2
        var resultString = ""
        
        if componentLength == 2 {
            resultString = hex
        } else {
            for _ in 0..<3 {
                let digit  = hex.remove(at: hex.startIndex)
                resultString += "\(digit)\(digit)"
            }
        }
        
        let rgb = Int(resultString, radix: 16) ?? 0
        return UIColor.from(rgb, a)
    }
    
    /// Получить цвет согласно HEX значению представленному в виде "#RGBA" или "#RRGGBBAA"
    ///
    /// - parameter hexa: hex color String "#0000" -> "#FFFFFFFF"
    ///
    /// - returns: UIColor
    public class func from(_ hexa: String) -> UIColor {
        guard !hexa.isEmpty else { return UIColor.purple }
        let length = hexa.count
        if length == 4 || length == 7 { return UIColor.from(hexa, 1.0) }
        if length != 5 && length != 9 { return UIColor.purple }
        
        var hexa = hexa
        var digit = ""
        
        if length == 5 {
            digit += String(hexa.removeLast())
            digit += digit
        } else if length == 9 {
            digit += String(hexa.removeLast())
            digit = String(hexa.removeLast()) + digit
        }
        
        let a = CGFloat(Int(digit, radix: 16) ?? 255) / 255.0
        return UIColor.from(hexa, a)
    }
    
    // MARK: - Int64
    /// Преобразовать цвет с альфой в Int64
    ///
    /// - Returns: Значение Int64 содержащее компоненты цвета
    public func toInt() -> Int64 {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let alpha = Int64(a * 255.0) << 24
        let red = Int64(r * 255.0) << 16
        let green = Int64(g * 255.0) << 8
        let blue = Int64(b * 255.0) << 0
        
        return (alpha + red + green + blue)
    }
    
    /// Преобразовать значение Int64 в UIColor
    ///
    /// - Parameter int: Значение содержащее компоненты цвета
    /// - Returns: UIColor с цветом представленным в виде переданного Int64
    public class func color(from int: Int64) -> UIColor {
        let a = CGFloat((int & 0xFF000000) >> 24) / 255.0
        let r = CGFloat((int & 0xFF0000) >> 16) / 255.0
        let g = CGFloat((int & 0xFF00) >> 8) / 255.0
        let b = CGFloat((int & 0xFF) >> 0) / 255.0
        
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
}
