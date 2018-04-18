import Foundation

public extension FileManager {
    
    /// Returns the document directory URL of the default FileManager.
    public static var documentDirectory: URL {
        if let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
            return url
        } else {
            fatalError("Could not retrieve documents directory")
        }
    }
}
