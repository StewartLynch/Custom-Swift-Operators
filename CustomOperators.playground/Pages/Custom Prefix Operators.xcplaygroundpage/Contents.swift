/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Custom Prefix Operators
*/

import Foundation

code(for: "Square Root") {
    print(sqrt(2))
    print(√2)
}

prefix operator √
prefix func √(value: Double) -> Double {
    sqrt(value)
}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
