/*struct CAUtils {
    var text = "Hello, World!"
}*/

protocol Iconnizable {
    var ok: String { get }
    var error: String { get }
    var page: String { get }
    var warning: String { get }
    var clock: String { get }
}

extension String:Iconnizable {
    var ok: String { return self+" 🍏"}
    var error: String { return self+" 🍎"}
    var page:String { return self+" ☀️" }
    var warning:String { return self+" ⚠️" }
    var clock:String { return self+" ⏱" }
}
