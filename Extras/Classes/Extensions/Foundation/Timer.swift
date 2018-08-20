import Foundation

public extension Timer {
    
    @discardableResult
    public class func delay(_ delay: TimeInterval, handler: (@escaping (CFRunLoopTimer?) -> Void)) -> Timer? {
        let fireDate = delay + CFAbsoluteTimeGetCurrent()
        let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, fireDate, 0, 0, 0, handler)
        CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, CFRunLoopMode.commonModes)
        
        return timer
    }
    
    @discardableResult
    public class func `repeat`(interval: TimeInterval, handler: (@escaping (CFRunLoopTimer?) -> Void)) -> Timer? {
        let fireDate = interval + CFAbsoluteTimeGetCurrent()
        let timer = CFRunLoopTimerCreateWithHandler(kCFAllocatorDefault, fireDate, interval, 0, 0, handler)
        CFRunLoopAddTimer(CFRunLoopGetCurrent(), timer, CFRunLoopMode.commonModes)
        
        return timer
    }
}
