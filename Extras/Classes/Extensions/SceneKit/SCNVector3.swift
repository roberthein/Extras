import Foundation
import SceneKit

public extension SCNVector3 {
    
    /// An empty SCNVector3.
    public static var zero: SCNVector3 {
        return SCNVector3(0, 0, 0)
    }
    
    /// A SCNVector3 that represents the X axis.
    public static var xAxis: SCNVector3 {
        return SCNVector3(1, 0, 0)
    }
    
    /// A SCNVector3 that represents the Y axis.
    public static var yAxis: SCNVector3 {
        return SCNVector3(0, 1, 0)
    }
    
    /// A SCNVector3 that represents the Z axis.
    public static var zAxis: SCNVector3 {
        return SCNVector3(0, 0, 1)
    }
}
