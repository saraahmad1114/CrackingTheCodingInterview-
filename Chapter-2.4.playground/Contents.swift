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
            return "\(value) -> \(next)"
        }
    }
    init(value: Int) {
        self.value = value
    }
}

//2. Generate linked list

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

var list = generateList(num: 890)

//prints 8 -> 9 -> 0 -> nil

//3. Find value in linked list 

func findValueInLinkedList (num: Int, head: Node?) -> Bool{
    
    var current = head
    
    while current != nil {
        
        if current?.value == num {
            return true
        }
        current = current?.next
    }
    return false
}

findValueInLinkedList(num: 8, head: list)

//returns true

func partitionLinkedList (head: inout Node?, num: Int) -> Node? {
    
    var current = head
    
    var tail : Node? = head
    
    if findValueInLinkedList(num: num, head: current) == true {
        
        while current != nil {
            
            if (current?.value)! < num {
                
                current?.next = head
                head = current
            }
            else {
                tail?.next = current
                tail = current
            }
            
            current = current?.next
        }
        
    }
    return current
}










