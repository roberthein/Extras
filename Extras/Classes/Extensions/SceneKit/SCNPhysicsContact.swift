import Foundation
import SceneKit

public extension SCNPhysicsContact {
    
    /// Detect collision between one node and a collection of other nodes.
    ///
    /// - Parameters:
    ///   - node: The player node
    ///   - nodes: Possible collision nodes
    ///   - action: The closure that will be called when there is a collision, returning both nodes
    func between<T: SCNNode, K: SCNNode>(_ node: T, and nodes: [K], action: (T, K) -> ()) {
        
        if [nodeA, nodeB].contains(node), let otherNode = [nodeA, nodeB].filter({ $0 is K }).first as? K {
            action(node, otherNode)
        }
    }
}
