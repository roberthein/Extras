import Foundation
import GLKit
import SceneKit.SceneKitTypes

public extension SCNQuaternion {
    
    public init(radians: Float, axis: SCNVector3) {
        self = SCNQuaternion(axis.x, axis.y, axis.z, radians)
    }
    
    public init(vector: SCNVector4) {
        self = SCNQuaternion(vector.x, vector.y, vector.z, vector.w)
    }
}

public func *(lhs: SCNQuaternion, rhs: SCNQuaternion) -> SCNQuaternion {
    return SCNQuaternion(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z, lhs.w * rhs.w)
}
