import UIKit
import RKUIExtensions

public extension UIView {
    // MARK: - SafeArea
    /// Return
    /// - safeAreaLayoutGuide for >= iOS 11
    /// - layoutGuides.first ?? layoutMarginsGuide for < iOS 11
    @available (iOS 9, *)
    public var rkSafeAreaLayoutGuide: UILayoutGuide {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide
        } else {
            return layoutGuides.first ?? layoutMarginsGuide
        }
    }
    
    /// Return
    /// - safeAreaInsets for >= iOS 11
    /// - UIEdgeInsets(top: x, left: 0, bottom: y, right: 0) for < iOS 11
    ///
    /// where:
    /// - x – maxY for NavigationBar or maxY for StatusBar
    /// - y – minY for TabBar
    @available (iOS 8, *)
    public var rkSafeAreaInsets: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return safeAreaInsets
        } else {
            var topInset: CGFloat = 0
            var bottomInset: CGFloat = 0
            
            if !UIApplication.shared.isStatusBarHidden {
                topInset = UIApplication.shared.statusBarFrame.height
            }
            
            if let topVC = UIApplication.shared.topViewController {
                if let nc = topVC.navigationController, !nc.isNavigationBarHidden {
                    topInset += nc.navigationBar.frame.height
                }
                if let tc = topVC.tabBarController, !tc.tabBar.isHidden {
                    bottomInset += tc.tabBar.frame.height
                }
            }

            return UIEdgeInsets(top: topInset, left: 0, bottom: bottomInset, right: 0)
        }
    }
}

@available (iOS 9, *)
public extension UIViewController {
    // MARK: - SafeArea
    /// Return
    /// - safeAreaLayoutGuide.topAnchor for >= iOS 11
    /// - topLayoutGuide.bottomAnchor for < iOS 11
    public var rkTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.rkSafeAreaLayoutGuide.topAnchor
        } else {
            return topLayoutGuide.bottomAnchor
        }
    }

    /// Return view.rkSafeAreaLayoutGuide.leftAnchor
    public var rkLeftAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.leftAnchor
    }

    /// Return
    /// - safeAreaLayoutGuide.bottomAnchor for >= iOS 11
    /// - bottomLayoutGuide.topAnchor for < iOS 11
    public var rkBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.rkSafeAreaLayoutGuide.bottomAnchor
        } else {
            return bottomLayoutGuide.topAnchor
        }
    }

    /// Return view.rkSafeAreaLayoutGuide.rightAnchor
    public var rkRightAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.rightAnchor
    }

    /// Return view.rkSafeAreaLayoutGuide.leadingAnchor
    public var rkLeadingAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.leadingAnchor
    }

    /// Return view.rkSafeAreaLayoutGuide.trailingAnchor
    public var rkTrailingAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.trailingAnchor
    }
}
