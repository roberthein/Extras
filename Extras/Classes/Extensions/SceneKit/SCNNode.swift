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
