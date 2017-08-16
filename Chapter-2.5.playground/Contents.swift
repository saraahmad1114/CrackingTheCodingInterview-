//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.5 - Sum Lists: You have two numbers represented by a linked list, where each node contains a single digit.The digits are stored in reverse order, such that the 1 's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.

//EXAMPLE

//Input:(7-> 1 -> 6) + (5 -> 9 -> 2).That is,617 + 295. Output:2 -> 1 -> 9.Thatis,912.
//FOLLOW UP
//Suppose the digits are stored in forward order. Repeat the above problem. EXAMPLE
//lnput:(6 -> 1 -> 7) + (2 -> 9 -> 5).That is,617 + 295. Output:9 -> 1 -> 2.Thatis,912.


class Node {
    var value: Int
    var next: Node?
    
    // init and generator can be the same method
    init(value: Int) {
        // store ones place and divide by 10
        self.value = value % 10
        var nextValue = value / 10
        
        // set up for loop
        var currentNode = self
        
        while nextValue > 0 {
            // create a new Node
            // store ones place and divide by 10
            let next = Node(value: nextValue % 10)
            nextValue /= 10
            
            // make the new Node the next Node
            currentNode.next = next
            
            // set up for next iteration
            currentNode = next
        }
    }
}

// make the list printable
extension Node: CustomStringConvertible {
    var description: String{
        if let next = next {
            return "\(value) -> \(next)"
        }
        else {
            return "\(value) -> nil"
        }
    }
}

extension Node {
    func toValue() -> Int {
        var place = 10
        var current = self
        // add each value and multiply by the place value
        // first is 1, second 10, third 100, etc.
        var result = current.value
        while let next = current.next {
            result += next.value * place
            place *= 10
            current = next
        }
        return result
    }
}

func +(lhs: Node, rhs: Node) -> Node {
    return Node(value: lhs.toValue() + rhs.toValue())
}

let first = Node(value: 617)
let second = Node(value: 295)
print(first)
print(second)

print(first + second)













