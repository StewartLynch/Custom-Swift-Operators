/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Custom Infix Operators
*/

import Foundation

code(for: "Exponentiation") {
    print( 3 ^ 2 )
    // 11 XOR 01 -> 01 == `1
    print(pow(3, 2))
    print(3^^2)
    print(4*5^^2)
}

code(for: "Joining Names") {
    let firstName = ""
    let lastName = "Lynch"
    print(firstName +% lastName)
}

infix operator +%: AdditionPrecedence

func +%(left: String, right: String) -> String {
    (left + " " + right).trimmingCharacters(in: .whitespacesAndNewlines)
}

infix operator ^^: ExponentialPrecedence
func ^^(left: Double, right: Double) -> Double {
    pow(left, right)
}

precedencegroup ExponentialPrecedence {
    higherThan: MultiplicationPrecedence
    associativity: right
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
