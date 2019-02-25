import Foundation
import CoreGraphics
import QuartzCore

public extension CAGradientLayer {
    
    convenience init(size: CGSize, colors: [CGColor], locations: [NSNumber]? = nil) {
        self.init()
        self.colors = colors
        self.locations = locations
        self.frame = CGRect(origin: .zero, size: size)
    }
}
