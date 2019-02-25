import Foundation

public extension FileManager {
    
    /// Returns the document directory URL of the default FileManager.
    static var documentDirectory: URL? {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
    }
}
