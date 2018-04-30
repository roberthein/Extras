import Foundation
import SceneKit

public extension SCNScene {
    
    public convenience init(daeName name: String) {
        self.init(named: name + ".dae")!
    }
}
