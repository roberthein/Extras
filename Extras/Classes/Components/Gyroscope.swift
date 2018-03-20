import Foundation
import CoreMotion
import CoreGraphics

let Gyroscope = GyroManager.shared

class GyroManager: CMMotionManager {
    
    static let shared = GyroManager()
    private let queue = OperationQueue()
    
    func observe(_ observer: @escaping (_ gyro: CGVector) -> Void) {
        startAccelerometerUpdates(to: queue) { data, error in
            guard let data = data else { return }
            
            DispatchQueue.main.sync {
                observer(CGVector(dx: CGFloat(data.acceleration.x) * -150, dy: CGFloat(data.acceleration.y) * 150))
            }
        }
    }
}
