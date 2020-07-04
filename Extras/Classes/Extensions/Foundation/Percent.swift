import Foundation

postfix operator %
postfix public func %<T: FloatingPoint>(lhs: T) -> T { lhs / 100 }

postfix operator °
postfix public func °<T: FloatingPoint>(lhs: T) -> T { lhs * ((.pi * 2) / 360) }
