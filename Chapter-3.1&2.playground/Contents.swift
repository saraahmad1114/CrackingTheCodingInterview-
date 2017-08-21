//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 3 

//3.1 - Describe how you could use a single array to implement three stacks.

//Answer: One of the best way to implement three stacks with a single array is to allot a certain size in the array for each stack, that way you can operate of O(1). 

//3.2 - How would you design a stack which, in addition to push and pop, has a function min which returns the minimum element? Push, pop and min should all operate in 0(1) time.

struct Stack {
    fileprivate var array: [String] = []
    
    //pushing onto the stack
    mutating func push(_ element: String) {
        array.append(element)
    }
    
    //popping off the stack 
    mutating func pop() -> String? {
        return array.popLast()
    }
}


