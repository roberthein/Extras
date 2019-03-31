import Foundation
import SceneKit

public extension SCNPhysicsBehavior {
    
    static func ballAndSocketJoint(_ nodeA: SCNNode, _ anchorA: SCNVector3, _ nodeB: SCNNode, _ anchorB: SCNVector3) -> SCNPhysicsBehavior {
        return SCNPhysicsBallSocketJoint(bodyA: nodeA.physicsBody!, anchorA: anchorA, bodyB: nodeB.physicsBody!, anchorB: anchorB)
    }
}
