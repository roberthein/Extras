import Foundation
import GLKit
import SceneKit.SceneKitTypes

public extension GLKQuaternion {
    
    init(radians: Float, axis: GLKVector3) {
        self = GLKQuaternionMakeWithAngleAndVector3Axis(radians, axis)
    }
    
    init(vector: SCNVector4) {
        self = GLKQuaternionMakeWithAngleAndAxis(vector.w, vector.x, vector.y, vector.z)
    }
}

public func *(lhs: GLKQuaternion, rhs: GLKQuaternion) -> GLKQuaternion {
    return GLKQuaternionMultiply(lhs, rhs)
}
