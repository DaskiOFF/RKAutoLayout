import UIKit

class RKConstraintsStorage {
    var sizeWidthConstraints: RKConstraints = []
    var sizeHeightConstraints: RKConstraints = []
    var centerXConstraints: RKConstraints = []
    var centerYConstraints: RKConstraints = []
    var edgeTopConstraints: RKConstraints = []
    var edgeLeftConstraints: RKConstraints = []
    var edgeBottomConstraints: RKConstraints = []
    var edgeRightConstraints: RKConstraints = []
    var edgeLeadingConstraints: RKConstraints = []
    var edgeTrailingConstraints: RKConstraints = []
    var firstBaselineConstraints: RKConstraints = []
    var lastBaselineConstraints: RKConstraints = []
}

private var ___constraintsStorage: UInt = 0
extension UIView {
    private var __constraintsStorage: RKConstraintsStorage? {
        get {
            return objc_getAssociatedObject(self, &___constraintsStorage) as? RKConstraintsStorage
        }
        set {
            if let newValue = newValue {
                objc_setAssociatedObject(self, &___constraintsStorage, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }

    var constraintsStorage: RKConstraintsStorage {
        get {
            if let storage = __constraintsStorage {
                return storage
            }
            __constraintsStorage = RKConstraintsStorage()
            return __constraintsStorage!
        }
    }
}
