/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
 ## Standard Swift Operators
 - Callout(Topic): An operator is a special symbol or phrase that you use to check, change, or combine values. Operators are a fundamental part of programming languages, enabling you to perform various operations on data types like numbers, strings, and more complex structures like arrays and objects.
*/
import Foundation

code(for: "Examples Infix") {
    let sum = 5 + 3
    print(sum)
    
    var a = 5
    a += 3
    print(a)
    
    let isGreater = 5 > 3
    print(isGreater)

    let andResult = true || false
    print(andResult)
}

code(for: "Example Prefix") {
    let x = 5
    print(-x)
    
    let isTrue = true
    let isFalse = !isTrue
    print(isFalse)
}

code(for: "Example Postfix") {
    let optionalString: String?
    optionalString = "Hello"
    let length = optionalString?.count
    print(length)
    
    let nonOptional = optionalString!
    let length2 = nonOptional.count
    print(length2)
    
    if let myString = optionalString {
        print(myString.count)
    } else {
        print(0)
    }
    
    print(optionalString?.count ?? 0)

}
/*:
 [< Previous](@previous)                    [Home](Introduction)                    [Next >](@next)
*/
