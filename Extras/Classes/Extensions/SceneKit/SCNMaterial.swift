import Foundation
import SceneKit

public extension SCNMaterial {
    
    func apply(_ modifiers: [SCNShaderModifierEntryPoint : String], _ values: [String: Any]) {
        shaderModifiers = modifiers
        values.forEach { setValue($0.value, forKey: $0.key) }
    }
}
