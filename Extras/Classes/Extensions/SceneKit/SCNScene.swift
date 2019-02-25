import Foundation
import SceneKit

public extension SCNScene {
    
    /// A initializer for loading a .dae file that's explicitly unwrapped.
    ///
    /// - Parameter name: The name of the .dae file without extension.
    convenience init(daeName name: String) {
        self.init(named: name + ".dae", inDirectory: "art.scnassets/Geometry")!
    }
    
    func add(_ nodes: SCNNode...) {
        nodes.forEach {
            rootNode.addChildNode($0)
        }
    }
    
    func add(_ nodes: [SCNNode]) {
        nodes.forEach {
            rootNode.addChildNode($0)
        }
    }
    
    func remove(_ nodes: SCNNode...) {
        nodes.forEach {
            $0.removeFromParentNode()
        }
    }
    
    func remove(_ nodes: [SCNNode]) {
        nodes.forEach {
            $0.removeFromParentNode()
        }
    }
}
