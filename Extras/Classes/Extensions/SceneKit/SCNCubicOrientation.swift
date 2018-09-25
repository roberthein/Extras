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
            return axis == .yAxis ? .left : .top
        case (step ... step * 3):
            return axis == .yAxis ? .right : .bottom
        case (step * 3 ... step * 4), (-step * 4 ... -step * 3):
            return .back
        default:
            return .front
        }
    }
    
    
    
    public func possibleAxes(for layout: SCNLayout) -> (horizontal: SCNVector3, vertical: SCNVector3) {
        switch layout {
        case .vertical:
            switch self {
            case .front, .back:
            return (.xAxis, .yAxis)
            case .left, .right:
            return (.zAxis, .yAxis)
            default:
            return (SCNVector3Zero, SCNVector3Zero)
            }
        case .horizontal:
            switch self {
            case .front, .back:
                return (.xAxis, .yAxis)
            case .top, .bottom:
                return (.xAxis, .zAxis)
            default:
                return (SCNVector3Zero, SCNVector3Zero)
            }
        }
    }
    
    public func correction(for axis: SCNVector3, layout: SCNLayout, isControlNode: Bool, isRotation: Bool) -> Float {
        if isControlNode, isRotation, layout == .horizontal, axis == .xAxis {
            return -1
        } else {
            if layout == .vertical, axis == .xAxis, self == .back {
                return -1
            } else if layout == .vertical, axis == .zAxis, self == .left {
                return -1
            } else if layout == .horizontal, axis == .yAxis, self == .back {
                return -1
            } else if layout == .horizontal, axis == .xAxis, isRotation {
                return -1
            } else {
                return 1
            }
        }
    }
}
