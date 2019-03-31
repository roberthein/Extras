import Foundation
import CoreGraphics
import SceneKit.SceneKitTypes

public extension CGPoint {
    
    static var xAxis: CGPoint {
        return CGPoint(x: 1, y: 0)
    }
    
    static var yAxis: CGPoint {
        return CGPoint(x: 0, y: 1)
    }
    
    func stretch(limits: ClosedRange<CGFloat>) -> CGPoint {
        return CGPoint(x: x.stretch(limits: limits), y: y.stretch(limits: limits))
    }
    
    func positionVelocityValue(for axis: CGPoint, at orientation: SCNCubicOrientation, isCameraController: Bool) -> Float {
        switch (axis.x, axis.y) {
        case (1, 0): return orientation == .back ? Float(-x) : Float(x)
        case (0, 1): return isCameraController ? Float(y) : Float(-y)
        default: return 0
        }
    }
    
    func rotationVelocityValue(for axis: CGPoint, at orientation: SCNCubicOrientation, isCameraController: Bool) -> Float {
        switch (axis.x, axis.y) {
        case (1, 0):
            return isCameraController ? Float(-x) : Float(x)
        case (0, 1):
            return (orientation == .back || orientation == .right) ? Float(-y) : Float(y)
        default: return 0
        }
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
