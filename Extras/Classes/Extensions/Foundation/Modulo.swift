import Foundation

infix operator % : MultiplicationPrecedence

public func %<T: FloatingPoint>(left: T, right: T) -> T {
    left.remainder(dividingBy: right)
}
