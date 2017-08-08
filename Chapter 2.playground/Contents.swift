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
    
    print(set)
    
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

//2.3 - Implement an algorithm to delete a node in the middle (i.e., any node but the  rst and last node, not necessarily the exact middle) of a singly linked list, given only access to that node.

//2.4 - Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes greater than or equal to x. If x is contained within the list, the values of x only need to be after the elements less than x (see below). The partition element x can appear anywhere in the "right partition"; it does not need to appear between the left and right partitions.









