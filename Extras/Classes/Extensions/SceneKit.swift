import Foundation
import UIKit
import SceneKit

extension SCNVector3 {
    
    static var zero: SCNVector3 {
        return SCNVector3(0, 0, 0)
    }
}

extension SCNVector4 {
    
    static var zero: SCNVector4 {
        return SCNVector4(0, 0, 0, 0)
    }
}

extension SCNPhysicsContact {
    
    func between<T: SCNNode, K: SCNNode>(_ node: T, and nodes: [K], action: (T, K) -> ()) {
        
        if [nodeA, nodeB].contains(node), let otherNode = [nodeA, nodeB].filter({ $0 is K }).first as? K {
            action(node, otherNode)
        }
    }
}

extension SCNScene {
    
    func add(_ nodes: [SCNNode]) {
        nodes.forEach {
            rootNode.addChildNode($0)
        }
    }
    
    func remove(_ nodes: [SCNNode]) {
        nodes.forEach {
            $0.removeFromParentNode()
        }
    }
}
