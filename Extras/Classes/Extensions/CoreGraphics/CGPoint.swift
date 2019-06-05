import Foundation
import CoreGraphics
import SceneKit.SceneKitTypes

public extension CGPoint {
    
    func distance(to: CGPoint) -> CGFloat {
        let xDist = to.x - x
        let yDist = to.y - y
        return sqrt((xDist * xDist) + (yDist * yDist))
    }
}

public func +(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

public func -(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

public func *(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x * right.x, y: left.y * right.y)
}

public func /(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x / right.x, y: left.y / right.y)
}

public func /(left: CGPoint, right: CGFloat) -> CGPoint {
    return CGPoint(x: left.x / right, y: left.y / right)
}

public func +=(left: inout CGPoint, right: CGPoint) {
    left = left + right
}

public func *=(left: inout CGPoint, right: CGPoint) {
    left = left * right
}

public func /=(left: inout CGPoint, right: CGPoint) {
    left = left / right
}
