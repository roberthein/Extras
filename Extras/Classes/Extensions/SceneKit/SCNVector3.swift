import Foundation
import SceneKit.SceneKitTypes

public extension SCNVector3 {
    
    /// An empty SCNVector3.
    public static var zero: SCNVector3 {
        return SCNVector3Zero
    }
    
    /// A SCNVector3 that represents the X axis.
    public static var xAxis: SCNVector3 {
        return SCNVector3(1, 0, 0)
    }
    
    /// A SCNVector3 that represents the Y axis.
    public static var yAxis: SCNVector3 {
        return SCNVector3(0, 1, 0)
    }
    
    /// A SCNVector3 that represents the Z axis.
    public static var zAxis: SCNVector3 {
        return SCNVector3(0, 0, 1)
    }
    
    public mutating func set(_ position: Float, for axis: SCNVector3) {
        switch (axis.x, axis.y, axis.z) {
        case (1, 0, 0): x = position
        case (0, 1, 0): y = position
        case (0, 0, 1): z = position
        default: break
        }
    }
    
    public func positionValue(for axis: SCNVector3, layout: SCNLayout) -> Float {
        switch layout {
        case .vertical:
            switch (axis.x, axis.y, axis.z) {
            case (1, 0, 0), (0, 0, 1): return x
            case (0, 1, 0): return y
            default: return 0
            }
        case .horizontal:
            switch (axis.x, axis.y, axis.z) {
            case (0, 1, 0), (0, 0, 1): return y
            case (1, 0, 0): return x
            default: return 0
            }
        }
    }
    
    public func rotationValue(for axis: SCNVector3, layout: SCNLayout) -> Float {
        switch layout {
        case .vertical:
            switch (axis.x, axis.y, axis.z) {
            case (1, 0, 0), (0, 0, 1): return -y
            case (0, 1, 0): return x
            default: return 0
            }
        case .horizontal:
            switch (axis.x, axis.y, axis.z) {
            case (0, 1, 0), (0, 0, 1): return x
            case (1, 0, 0): return y
            default: return 0
            }
        }
    }
    
    public static func == (lhs: SCNVector3, rhs: SCNVector3) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
}
