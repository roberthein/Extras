import Foundation
import SceneKit

precedencegroup BackwardApplication {
    associativity: right
}

infix operator |<: BackwardApplication
infix operator |<<: BackwardApplication

/// Add the right node as a child of the left node.
///
/// - Parameters:
///   - left: The parent SCNNode
///   - right: The child SCNNode
/// - Returns: The parent SCNNode
@discardableResult
public func |< (left: SCNNode, right: SCNNode) -> SCNNode {
    left.addChildNode(right)
    return left
}

/// Add right nodes as children of the left node.
///
/// - Parameters:
///   - left: The parent SCNNode
///   - right: The children SCNNode's
/// - Returns: The parent SCNNode
@discardableResult
public func |< (left: SCNNode, right: [SCNNode]) -> SCNNode {
    right.forEach { left |< $0 }
    return left
}

/// Add every right node recursively to the node to it's left.
///
/// - Parameters:
///   - left: The parent SCNNode
///   - right: The children SCNNode's
/// - Returns: The parent SCNNode
@discardableResult
public func |<< (left: SCNNode, right: [SCNNode]) -> SCNNode {
    var previousNode: SCNNode = left
    
    right.forEach {
        previousNode |< $0
        previousNode = $0
    }
    
    return left
}

public extension SCNNode {
    
    public func applyShader(shaderModifiers: [SCNShaderModifierEntryPoint : String]) {
        geometry?.shaderModifiers = shaderModifiers
        childNodes.compactMap { $0.geometry }.forEach { $0.shaderModifiers = shaderModifiers }
    }
    
    public func rotation(for axis: SCNVector3) -> Float {
        switch (axis.x, axis.y, axis.z) {
        case (1, 0, 0): return rotation.x * rotation.w
        case (0, 1, 0): return rotation.y * rotation.w
        case (0, 0, 1): return rotation.z * rotation.w
        default: return 0
        }
    }
    
    public func orientation(for axis: SCNVector3) -> Float {
        switch (axis.x, axis.y, axis.z) {
        case (1, 0, 0): return orientation.x * orientation.w
        case (0, 1, 0): return orientation.y * orientation.w
        case (0, 0, 1): return orientation.z * orientation.w
        default: return 0
        }
    }
}
