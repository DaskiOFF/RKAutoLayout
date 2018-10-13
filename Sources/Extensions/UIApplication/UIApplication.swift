import UIKit

extension UIApplication {
    // MARK: - Hierarchy
    var topViewController: UIViewController? {
        var vc: UIViewController? = keyWindow?.rootViewController
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
