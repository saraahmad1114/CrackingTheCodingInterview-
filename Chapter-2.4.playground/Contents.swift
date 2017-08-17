//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.4 - Partition: Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes greater than or equal to x. If x is contained within the list, the values of x only need to be after the elements less than x (see below). The partition element x can appear anywhere in the "right partition"; it does not need to appear between the left and right partitions.

//EXAMPLE
//Input: 3 -> 5 -> 8 -> 5 -> 10 -> 2 -> 1[partition=5] Output: 3 -> 1 -> 2 -> 10 -> 5 -> 5 -> 8

//1. Define the linked list 

class Node: CustomStringConvertible{
    
    var value: Int
    var next: Node?
    var description: String{
        if next != nil {
            return "\(value) -> \(next!)"
        }
        else {
            return "\(value) -> \(next!)"
        }
    }
    init(value: Int) {
        self.value = value
    }
}

func generateList (num: Int) -> Node {
    
    var stringNum = Array(String(num).characters)
    let head = Node.init(value:Int(String(stringNum.first!))!)
    var current = head
    
    for i in 1..<stringNum.count{
        let num = Int(String(stringNum[i]))
        current.next = Node.init(value: num!)
        current = current.next!
    }
    return head
}


