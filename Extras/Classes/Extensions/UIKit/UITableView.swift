import Foundation
import UIKit

public protocol TableViewCell: class {
    static var reuseIdentifier: String { get }
}

public extension TableViewCell {
    
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: TableViewCell {}

public extension UITableView {
    
    public func register<T: TableViewCell>(_ cellClass: T.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.reuseIdentifier)
    }
    
    public func dequeue<T: TableViewCell>(_ cellClass: T.Type) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: cellClass.reuseIdentifier) as? T else {
            fatalError("Misconfigured cell type, \(cellClass)!")
        }
        
        return cell
    }
    
    public func dequeue<T: TableViewCell>(_ cellClass: T.Type, for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: cellClass.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Misconfigured cell type, \(cellClass)!")
        }
        
        return cell
    }
}
