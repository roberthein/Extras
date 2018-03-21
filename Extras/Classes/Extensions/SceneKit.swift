import Foundation
import UIKit
import SceneKit

public extension SCNVector4 {
    
    public static var zero: SCNVector4 {
        return SCNVector4(0, 0, 0, 0)
    }
}

public extension SCNPhysicsContact {
    
    public func between<T: SCNNode, K: SCNNode>(_ node: T, and nodes: [K], action: @escaping ((T, K) -> ())) {
        
        if [nodeA, nodeB].contains(node), let otherNode = [nodeA, nodeB].filter({ $0 is K }).first as? K {
            
            DispatchQueue.main.async {
                action(node, otherNode)
            }
        }
    }
}

public extension SCNScene {
    
    public func add(_ nodes: [SCNNode]) {
        nodes.forEach {
            rootNode.addChildNode($0)
        }
    }
    
    public func remove(_ nodes: [SCNNode]) {
        nodes.forEach {
            $0.removeFromParentNode()
        }
    }
}
