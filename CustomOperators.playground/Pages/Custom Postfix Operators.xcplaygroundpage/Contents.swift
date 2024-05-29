/*:
 [< Previous](@previous)                    [Home](Introduction)
 ## Custom Postfix Operators
*/
import Foundation

code(for: "Trim") {
    let sentence = """
    This is line 1

This is line 2
 
"""
    print(sentence)
    print(sentence<-)
}

code(for: "++") {
    var x = 5
    x++
    print(x)
}

postfix operator ++

extension Int {
    postfix static func ++(self: inout Int) -> Int {
        self += 1
        return self
    }
}

postfix operator <-

//postfix func <-(value: String) -> String {
//    value.replacingOccurrences(of: "\\n+", with: "\n", options: .regularExpression, range: nil).trimmingCharacters(in: .whitespaces)
//}

extension String {
    postfix static func <-(self: String) -> String {
        self.replacingOccurrences(of: "\\n+", with: "\n", options: .regularExpression, range: nil).trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
/*:
 [< Previous](@previous)                    [Home](Introduction)
*/
