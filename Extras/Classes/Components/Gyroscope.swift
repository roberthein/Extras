import Foundation
import CoreMotion
import CoreGraphics

/// Gyroscope is a wrapper around CMMotionManager to make it easier to observe accelerometer updates.
public class Gyroscope: CMMotionManager {
    private let queue = OperationQueue()
    
    /// Add an observer closure to get accelerometer updates in your class.
    ///
    /// - Parameter observer: The closure that receives the accelerometer updates
    public func observe(_ observer: @escaping (_ gyro: CGVector) -> Void) {
        startAccelerometerUpdates(to: queue) { data, error in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                observer(CGVector(dx: CGFloat(data.acceleration.x) * -150, dy: CGFloat(data.acceleration.y) * 150))
            }
        }
    }
}
