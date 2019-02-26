import Foundation
import CoreGraphics
import SceneKit.SceneKitTypes

public extension CGPoint {
    
    func stretch(limits: ClosedRange<CGFloat>) -> CGPoint {
        return CGPoint(x: x.stretch(limits: limits), y: y.stretch(limits: limits))
    }
    
    func positionVelocityValue(for axis: SCNVector3, at orientation: SCNCubicOrientation, isCameraController: Bool) -> Float {
        switch (axis.x, axis.y, axis.z) {
        case (1, 0, 0), (0, 0, 1): return orientation == .back ? Float(-x) : Float(x)
        case (0, 1, 0): return Float(-y)
        default: return 0
        }
    }
    
    func rotationVelocityValue(for axis: SCNVector3, at orientation: SCNCubicOrientation, isCameraController: Bool) -> Float {
        switch (axis.x, axis.y, axis.z) {
        case (1, 0, 0):
            return isCameraController ? Float(-x) : Float(x)
        case (0, 1, 0), (0, 0, 1):
            return Float(y)
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
