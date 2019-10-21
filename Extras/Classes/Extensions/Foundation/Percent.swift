import Foundation

postfix operator %

postfix public func %<T: FloatingPoint>(value: T) -> T {
    value / 100
}
