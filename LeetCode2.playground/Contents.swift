//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question 2: You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

//You may assume the two numbers do not contain any leading zero, except the number 0 itself.

//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8

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

let first = Node(value: 243)
let second = Node(value: 564)
print(first)
print(second)
print(first + second)






