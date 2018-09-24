import UIKit
import RKUIExtensions

public extension UIView {
    // MARK: - SafeArea
    /// с iOS 11 возвращает safeAreaLayoutGuide
    ///
    /// до iOS 11 возврaщает layoutGuides.first ?? layoutMarginsGuide
    @available (iOS 9, *)
    public var rkSafeAreaLayoutGuide: UILayoutGuide {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide
        } else {
            return layoutGuides.first ?? layoutMarginsGuide
        }
    }
    
    /// с iOS 11 возвращает safeAreaInsets;
    ///
    /// до iOS 11 возврaщает UIEdgeInsets(top: x, left: 0, bottom: y, right: 0)
    ///
    /// где x – отступ сверху зависящий от statusBar и NavigationBar
    ///
    /// где y – отступ снизу зависящий от TabBar
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
    /// с iOS 11 возвращает view.rkSafeAreaLayoutGuide.topAnchor
    ///
    /// до iOS 11 возврaщает topLayoutGuide.bottomAnchor
    public var rkTopAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.rkSafeAreaLayoutGuide.topAnchor
        } else {
            return topLayoutGuide.bottomAnchor
        }
    }

    /// Возвращает view.rkSafeAreaLayoutGuide.leftAnchor
    public var rkLeftAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.leftAnchor
    }

    /// Возвращает view.rkSafeAreaLayoutGuide.leadingAnchor
    public var rkLeadingAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.leadingAnchor
    }
    
    /// с iOS 11 возвращает view.rkSafeAreaLayoutGuide.bottomAnchor
    ///
    /// до iOS 11 возврaщает bottomLayoutGuide.topAnchor
    public var rkBottomAnchor: NSLayoutYAxisAnchor {
        if #available(iOS 11, *) {
            return view.rkSafeAreaLayoutGuide.bottomAnchor
        } else {
            return bottomLayoutGuide.topAnchor
        }
    }

    /// Возвращает view.rkSafeAreaLayoutGuide.rightAnchor
    public var rkRightAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.rightAnchor
    }

    /// Возвращает view.rkSafeAreaLayoutGuide.trailingAnchor
    public var rkTrailingAnchorAnchor: NSLayoutXAxisAnchor {
        return view.rkSafeAreaLayoutGuide.trailingAnchor
    }
}
