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

public class XXX {
    public static func mmmmm() -> String {
        return "mmmmm"
    }
    
    public init() {}
}

public class TTT {
    public init(a:Int) {
        _ = SSS(b: 10)
    }
}

class SSS {
    init(b:Int) {
           
    }
}

public func iiiii() -> String {
    return "iiiii"
}

func ooooo() -> String {
    return "ooooo"
}
