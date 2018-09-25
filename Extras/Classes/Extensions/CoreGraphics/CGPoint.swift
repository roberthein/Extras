import Foundation
import CoreGraphics
import SceneKit.SceneKitTypes

extension CGPoint {
    
    public func stretch(limits: ClosedRange<CGFloat>) -> CGPoint {
        return CGPoint(x: x.stretch(limits: limits), y: y.stretch(limits: limits))
    }
    
    public func positionVelocityValue(for axis: SCNVector3, layout: SCNLayout) -> Float {
        switch layout {
        case .vertical:
            switch (axis.x, axis.y, axis.z) {
            case (1, 0, 0), (0, 0, 1): return Float(x)
            case (0, 1, 0): return Float(y)
            default: return 0
            }
        case .horizontal:
            switch (axis.x, axis.y, axis.z) {
            case (0, 1, 0), (0, 0, 1): return Float(y)
            case (1, 0, 0): return Float(x)
            default: return 0
            }
        }
    }
    
    public func rotationVelocityValue(for axis: SCNVector3, layout: SCNLayout) -> Float {
        switch layout {
        case .vertical:
            switch (axis.x, axis.y, axis.z) {
            case (1, 0, 0): return Float(y)
            case (0, 1, 0), (0, 0, 1): return Float(x)
            default: return 0
            }
        case .horizontal:
            switch (axis.x, axis.y, axis.z) {
            case (1, 0, 0): return Float(x)
            case (0, 1, 0), (0, 0, 1): return Float(y)
            default: return 0
            }
        }
    }
}

public func +(left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
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
