import Foundation
import SceneKit

public extension SCNPhysicsWorld {
    
    func add(_ behaviors: SCNPhysicsBehavior...) {
        behaviors.forEach {
            addBehavior($0)
        }
    }
    
    func add(_ behaviors: [SCNPhysicsBehavior]) {
        behaviors.forEach {
            addBehavior($0)
        }
    }
}
