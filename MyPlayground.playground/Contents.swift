//: Playground - noun: a place where people can play

import UIKit
// Definition of protocols and generics with extensions
protocol Addable {
    static func +(lhs:Self, rhs:Self) -> Self
}
func add<T:Addable>(a:T,b:T) -> T {
    return a + b
}

extension String:Addable {}
extension Int:Addable {}
extension Double:Addable {}

add(a: 5, b: 5)
add(a: "Kwame", b: "Bryan")
add(a: 2.5, b: 4.5)
/// functions as arguments
func operate(x:Int,y:Int, fn:(Int,Int)->()){
    fn(x,y)
}
func add(x:Int,y:Int) {
    print(x+y)
}
operate(x: 1, y: 3, fn: add)
// Tuple example
func returnSomeIntegers(a:Int,b:Int) -> (Int,Int) {
    return (a,b)
}
var returnMultipleValues = returnSomeIntegers(a: 8, b: 4)
returnMultipleValues.0
returnMultipleValues.1
/// curried functions
func curriedExample(a:Int, b:Int, c:Int) -> Int {
    return a+b+c
}
curriedExample(a: 4, b: 5, c: 5)
/// passing closures to functions
func operate(a:Int,b:Int, fn:(Int,Int) ->Int) {
    fn(a,b)
}

operate(x:1, y: 4) { (a,b) in a + b }
operate(x: 1, y: 5) { $0 + $1 }

