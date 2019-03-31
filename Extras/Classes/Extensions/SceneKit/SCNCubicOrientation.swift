import Foundation
import SceneKit.SceneKitTypes

public enum SCNCubicOrientation: String {
    case front
    case back
    case left
    case right
    case top
    case bottom
    
    public static func orientation(for rotation: Float, on axis: SCNVector3) -> SCNCubicOrientation {
        let step: Float = .pi / 4
        
        switch rotation {
        case (-step ... step):
            return .front
        case (-step * 3 ... -step):
            return axis == .yAxis ? .left : .bottom
        case (step ... step * 3):
            return axis == .yAxis ? .right : .top
        case (step * 3 ... step * 4), (-step * 4 ... -step * 3):
            return .back
        default:
            return .front
        }
    }
    
    public var possibleAxes: (horizontal: SCNVector3, vertical: SCNVector3) {
        switch self {
        case .front, .back:
            return (.xAxis, .yAxis)
        case .left, .right:
            return (.zAxis, .yAxis)
        default:
            return (SCNVector3Zero, SCNVector3Zero)
        }
    }
}
