import Foundation
import SceneKit

public extension SCNMaterial {
    
    class func PBR() -> SCNMaterial {
        let material = SCNMaterial()
        material.lightingModel = .physicallyBased
        
        return material
    }
}
