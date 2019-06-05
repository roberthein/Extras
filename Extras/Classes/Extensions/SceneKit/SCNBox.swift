import Foundation
import SceneKit

extension SCNBox {
    
    public convenience init(radius: CGFloat, chamferRadius: CGFloat = 0) {
        self.init(diameter: radius * 2, chamferRadius: chamferRadius)
    }
    
    public convenience init(diameter: CGFloat, chamferRadius: CGFloat = 0) {
        self.init(width: diameter, height: diameter, length: diameter, chamferRadius: chamferRadius)
    }
}
