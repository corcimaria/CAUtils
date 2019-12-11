/*struct CAUtils {
    var text = "Hello, World!"
}*/

public protocol Iconnizable {
    var ok: String { get }
    var error: String { get }
    var page: String { get }
    var warning: String { get }
    var clock: String { get }
}

extension String:Iconnizable {
    public var ok: String { return self+" 🍏"}
    public var error: String {return self+" 🍎"}
    public var page:String { return self+" ☀️" }
    public var warning:String { return self+" ⚠️" }
    public var clock:String { return self+" ⏱" }
}

class CAUtils {
    public static func sadsadasd() -> Int {
        return 1234
    }
}
