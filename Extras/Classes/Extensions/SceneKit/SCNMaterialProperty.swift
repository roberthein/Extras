import Foundation
import SceneKit

public extension SCNMaterialProperty {
    
    public func image(_ imageName: String, intensity intensityValue: CGFloat = 1, repeats: Float = 1) {
        image(UIImage(named: imageName), intensity: intensityValue, repeats: repeats)
    }
    
    public func image(_ image: UIImage?, intensity intensityValue: CGFloat = 1, repeats: Float = 1) {
        contents = image
        intensity = intensityValue
        
        if repeats != 1 {
            contentsTransform = SCNMatrix4MakeScale(repeats, repeats, 0)
            wrapS = .repeat
            wrapT = .repeat
        }
    }
    
    public func color(_ color: UIColor, intensity intensityValue: CGFloat = 1) {
        contents = color
        intensity = intensityValue
    }
}
