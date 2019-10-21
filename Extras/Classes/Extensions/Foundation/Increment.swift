import Foundation
import CoreGraphics

postfix operator ++
postfix operator --

postfix public func ++<T: SignedInteger>(i: inout T) {
    i += 1
}

postfix public func --<T: SignedInteger>(i: inout T) {
    i -= 1
}

postfix public func ++<T: UnsignedInteger>(i: inout T) {
    i += 1
}

postfix public func --<T: UnsignedInteger>(i: inout T) {
    if i > 0 {
        i -= 1
    }
}
