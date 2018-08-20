import Foundation
import UIKit

public protocol CollectionViewCell: class {
    static var reuseIdentifier: String { get }
}

public extension CollectionViewCell {
    
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: CollectionViewCell {}

public extension UICollectionView {
    
    public func register<T: CollectionViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellWithReuseIdentifier: cellClass.reuseIdentifier)
    }
    
    public func dequeue<T: CollectionViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellClass.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Misconfigured cell type, \(cellClass)!")
        }
        
        return cell
    }
}
