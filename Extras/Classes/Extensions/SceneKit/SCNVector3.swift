import Foundation
import SceneKit.SceneKitTypes

public extension SCNVector3 {
    
    /// An empty SCNVector3.
    static var zero: SCNVector3 {
        return SCNVector3Zero
    }
    
    /// A SCNVector3 that represents the X axis.
    static var xAxis: SCNVector3 {
        return SCNVector3(1, 0, 0)
    }
    
    /// A SCNVector3 that represents the Y axis.
    static var yAxis: SCNVector3 {
        return SCNVector3(0, 1, 0)
    }
    
    /// A SCNVector3 that represents the Z axis.
    static var zAxis: SCNVector3 {
        return SCNVector3(0, 0, 1)
    }
    
    mutating func replace(_ value: Float, for axis: SCNVector3) {
        switch (axis.x, axis.y, axis.z) {
        case (1, 0, 0): x = value
        case (0, 1, 0): y = value
        case (0, 0, 1): z = value
        default: break
        }
    }
    
    func positionValue(for axis: SCNVector3, layout: SCNLayout) -> Float {
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
    
    func rotationValue(for axis: SCNVector3, layout: SCNLayout) -> Float {
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
    
    static func == (lhs: SCNVector3, rhs: SCNVector3) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
    
    static func + (lhs: SCNVector3, rhs: SCNVector3) -> SCNVector3 {
        return SCNVector3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z)
    }
    
    static func - (lhs: SCNVector3, rhs: SCNVector3) -> SCNVector3 {
        return SCNVector3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z)
    }
}
