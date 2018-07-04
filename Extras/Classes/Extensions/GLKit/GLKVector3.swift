import Foundation
import GLKit

extension GLKVector3 {
    
    public static var zero: GLKVector3 {
        return GLKVector3(v: (0, 0, 0))
    }
    
    public static var xAxis: GLKVector3 {
        return GLKVector3(v: (1, 0, 0))
    }
    
    public static var yAxis: GLKVector3 {
        return GLKVector3(v: (0, 1, 0))
    }
    
    public static var zAxis: GLKVector3 {
        return GLKVector3(v: (0, 0, 1))
    }
}

extension GLKVector3: Equatable {
    
    public static func ==(lhs: GLKVector3, rhs: GLKVector3) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y && lhs.z == rhs.z
    }
}
