import Foundation
import SceneKit

public extension SCNMaterial {
    
    class func PBR() -> SCNMaterial {
        let material = SCNMaterial()
        material.lightingModel = .physicallyBased
        
        return material
    }
    
    convenience init(color: UIColor) {
        self.init()
        lightingModel = .physicallyBased
        diffuse.contents = color
    }
    
    func apply(_ modifiers: [SCNShaderModifierEntryPoint : String], _ values: [String: Any]) {
        shaderModifiers = modifiers
        values.forEach { setValue($0.value, forKey: $0.key) }
    }
}
