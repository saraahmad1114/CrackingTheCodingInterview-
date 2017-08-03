//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 2 

//2.1 - Remove Duplicates: Write code to remove duplicates from an unsorted linked list.

class Node : CustomStringConvertible {
    
    var value: Int
    var next: Node?
    var description: String {
        if next != nil {
            return "(\(value)) -> \(next!)"
        } else {
            return "(\(value)) -> \(next)"
        }
    }
    
    init(value: Int) {
        self.value = value
    }
}


func removeDups(head: Node?) -> Node? {
    
    var current = head
    var stableNode = head
    
    var set: Set<Int> = []
    
    while current != nil {
        
        if set.insert(current!.value).inserted {
            stableNode = current!
        } else {
            stableNode!.next = current!.next
        }
        
        current = current!.next
    }
    
    return head
}


// generate data
let h = Node.init(value: 1)
var current = h
for i in 0..<30 {
    let randomValue = Int(arc4random_uniform(10))
    current.next = Node.init(value: randomValue)
    current = current.next!
}

print(h)

print(removeDups(head: h))

//2.2 - Return Kth to Last: Implement an algorithm to  nd the kth to last element of a singly linked list.





