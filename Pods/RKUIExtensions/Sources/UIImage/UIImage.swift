import UIKit

public extension UIImage {
    static func from(color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        
        UIGraphicsBeginImageContext(rect.size)
        guard let context = UIGraphicsGetCurrentContext() else { return UIImage() }
        context.setFillColor(color.cgColor)
        context.fill(rect)
        
        guard let resultImage = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
        UIGraphicsEndImageContext()
        
        return resultImage
    }

    /// Change image color
    ///
    /// - Parameter color: new color for image
    /// - Returns: new Image with updated color
    func changeColor(with color: UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.size, false, UIScreen.main.scale)

        let context = UIGraphicsGetCurrentContext()
        context?.translateBy(x: 0, y: self.size.height)
        context?.scaleBy(x: 1.0, y: -1.0)

        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)

        // draw alpha-mask
        context?.setBlendMode(.normal)
        guard let cgImage = self.cgImage else { return nil }
        context?.draw(cgImage, in: rect)

        // draw tint color, preserving alpha values of original image
        context?.setBlendMode(.sourceIn)
        color.setFill()
        context?.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }
}
