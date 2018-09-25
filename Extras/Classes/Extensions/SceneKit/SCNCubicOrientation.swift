import Foundation
import SceneKit.SceneKitTypes

public enum SCNCubicOrientation: String {
    case unknown
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
            return SCNCubicOrientation.front
        case (-step * 3 ... -step):
            return axis == SCNVector3.yAxis ? SCNCubicOrientation.left : SCNCubicOrientation.top
        case (step ... step * 3):
            return axis == SCNVector3.yAxis ? SCNCubicOrientation.right : SCNCubicOrientation.bottom
        case (step * 3 ... step * 4), (-step * 4 ... -step * 3):
            return SCNCubicOrientation.back
        default:
            return SCNCubicOrientation.unknown
        }
    }
    
    public var axes: (horizontal: SCNVector3, vertical: SCNVector3) {
        switch self {
        case .front, .back:
            return (horizontal: .xAxis, vertical: .yAxis)
        case .left, .right:
            return (horizontal: .zAxis, vertical: .yAxis)
        case .top, .bottom:
            return (horizontal: .xAxis, vertical: .zAxis)
        case .unknown:
            return (horizontal: .zero, vertical: .zero)
        }
    }
}
