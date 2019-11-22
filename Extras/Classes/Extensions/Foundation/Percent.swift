import Foundation

postfix operator %

postfix public func %<T: FloatingPoint>(lhs: T) -> T { lhs / 100 }
