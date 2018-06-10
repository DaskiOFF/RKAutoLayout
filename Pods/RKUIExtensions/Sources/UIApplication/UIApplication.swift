import UIKit

public extension UIApplication {
    // MARK: - Hierarchy
    public var topViewController: UIViewController? {
        var vc: UIViewController? = keyWindow?.window?.rootViewController
        while true {
            if let nc = vc as? UINavigationController {
                vc = nc.viewControllers.last
            } else if let tc = vc as? UITabBarController {
                vc = tc.selectedViewController
            } else if vc?.presentedViewController != nil {
                vc = vc?.presentedViewController
            } else {
                return vc
            }
        }
    }
}
