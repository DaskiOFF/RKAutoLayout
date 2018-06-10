import UIKit

public extension UIViewController {
    @available(iOS, introduced: 7.0, deprecated: 11.0, message: "Use adjustsScrollViewInsets(_ scrollView: UIScrollView, adjust: Bool) instead")
    public func adjustsScrollViewInsets(_ adjust: Bool) {
        if adjust == false {
            automaticallyAdjustsScrollViewInsets = false
            extendedLayoutIncludesOpaqueBars = true
        } else {
            automaticallyAdjustsScrollViewInsets = true
            extendedLayoutIncludesOpaqueBars = false
        }
    }

    @available(iOS 11.0, *)
    public func adjustsScrollViewInsets(_ scrollView: UIScrollView, adjust: Bool) {
        if adjust {
            scrollView.contentInsetAdjustmentBehavior = .never
        } else {
            scrollView.contentInsetAdjustmentBehavior = .always
        }
    }
}
