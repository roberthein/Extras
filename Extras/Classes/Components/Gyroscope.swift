import Foundation
import CoreMotion
import CoreGraphics

public let Gyroscope = GyroManager.shared

public class GyroManager: CMMotionManager {
    
    private static let shared = GyroManager()
    private let queue = OperationQueue()
    
    public func observe(_ observer: @escaping (_ gyro: CGVector) -> Void) {
        startAccelerometerUpdates(to: queue) { data, error in
            guard let data = data else { return }
            
            DispatchQueue.main.sync {
                observer(CGVector(dx: CGFloat(data.acceleration.x) * -150, dy: CGFloat(data.acceleration.y) * 150))
            }
        }
    }
}
