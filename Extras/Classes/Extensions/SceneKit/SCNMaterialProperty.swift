import Foundation
import SceneKit

public extension SCNMaterialProperty {
    
    func image(_ imageName: String, _ intensity: CGFloat = 1, repeats: Float = 1) {
        image(UIImage(named: imageName), intensity, repeats: repeats)
    }
    
    func image(_ contents: UIImage?, _ intensity: CGFloat = 1, repeats: Float = 1) {
        self.contents = contents
        self.intensity = intensity
        
        if repeats != 1 {
            contentsTransform = SCNMatrix4MakeScale(repeats, repeats, 0)
            wrapS = .repeat
            wrapT = .repeat
        }
    }
    
    func color(_ contents: UIColor, _ intensity: CGFloat = 1) {
        self.contents = contents
        self.intensity = intensity
    }
}
