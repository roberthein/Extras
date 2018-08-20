import Foundation

public let Defaults = UserDefaults.standard

public extension UserDefaults {
    
    func set<T>(_ value: T?, for key: Key) {
        set(value, forKey: key.rawValue)
    }
    
    func value<T>(for key: Key) -> T? {
        return value(forKey: key.rawValue) as? T
    }
    
    func register(_ defaults: [Key: Any]) {
        let mapped = Dictionary(uniqueKeysWithValues: defaults.map { (key, value) -> (String, Any) in
            if let color = value as? UIColor {
                return (key.rawValue, NSKeyedArchiver.archivedData(withRootObject: color))
            } else if let url = value as? URL {
                return (key.rawValue, url.absoluteString)
            } else {
                return (key.rawValue, value)
            }
        })
        
        register(defaults: mapped)
    }
    
}

public extension UserDefaults {
    
    subscript<T>(key: Key) -> T? {
        get { return value(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> UIColor? {
        get { return color(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> URL? {
        get { return url(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> Bool {
        get { return bool(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> Int {
        get { return integer(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> Double {
        get { return double(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> Float {
        get { return float(for: key) }
        set { set(newValue, for: key) }
    }
    
    subscript(key: Key) -> CGFloat {
        get { return CGFloat(float(for: key) as Float) }
        set { set(newValue, for: key) }
    }
}

public extension UserDefaults {
    
    func bool(for key: Key) -> Bool {
        return bool(forKey: key.rawValue)
    }
    
    func integer(for key: Key) -> Int {
        return integer(forKey: key.rawValue)
    }
    
    func float(for key: Key) -> Float {
        return float(forKey: key.rawValue)
    }
    
    func float(for key: Key) -> CGFloat {
        return CGFloat(float(for: key) as Float)
    }
    
    func double(for key: Key) -> Double {
        return double(forKey: key.rawValue)
    }
    
    func url(for key: Key) -> URL? {
        return string(for: key).flatMap { URL(string: $0) }
    }
    
    func date(for key: Key) -> Date? {
        return object(forKey: key.rawValue) as? Date
    }
    
    func string(for key: Key) -> String? {
        return string(forKey: key.rawValue)
    }
    
    func set(_ url: URL?, for key: Key) {
        set(url?.absoluteString, forKey: key.rawValue)
    }
    
    func set(_ color: UIColor?, for key: Key) {
        guard let color = color else {
            set(nil, forKey: key.rawValue)
            return
        }
        
        let data = NSKeyedArchiver.archivedData(withRootObject: color)
        set(data, forKey: key.rawValue)
    }
    
    func color(for key: Key) -> UIColor? {
        return data(forKey: key.rawValue)
            .flatMap { NSKeyedUnarchiver.unarchiveObject(with: $0) as? UIColor }
    }
}

public extension UserDefaults {
    
    struct Key: Hashable, RawRepresentable, ExpressibleByStringLiteral {
        
        public var rawValue: String
        
        public init(rawValue: String) {
            self.rawValue = rawValue
        }
        
        public init(stringLiteral value: String) {
            self.rawValue = value
        }
    }
}
