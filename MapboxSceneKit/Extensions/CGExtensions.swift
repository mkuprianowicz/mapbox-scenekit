import Foundation
import UIKit

public func * (left: CGSize, right: CGFloat) -> CGSize {
    return CGSize(width: left.width * right, height: left.height * right)
}

public func *= ( left: inout CGSize, right: CGFloat) {
    left = left * right
}

public func * (left: UIEdgeInsets, right: CGFloat) -> UIEdgeInsets {
    return UIEdgeInsets(top: left.top * right, left: left.left * right, bottom: left.bottom * right, right: left.right * right)
}

public func *= ( left: inout UIEdgeInsets, right: CGFloat) {
    left = left * right
}

