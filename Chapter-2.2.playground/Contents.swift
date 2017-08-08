//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.2 - Return Kth to Last: Implement an algorithm to  nd the kth to last element of a singly linked list.
//the Kth element is the last in the linked list

class Node: CustomStringConvertible {

    var value: Int
    var next: Node?
    var description: String{
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

func generateList () -> Node {
    let head = Node.init(value: 1)
    var current = head
    for _ in 0..<20{
        let randomNum = Int (arc4random_uniform(10))
        current.next = Node.init(value: randomNum)
        current = current.next!
    }
    return head
}

let h1 = generateList()

print(h1)

func countNodes(head: Node?) -> Int {
    
    var current = head
    var counter = 0
    
    while current != nil {
        counter += 1
        current = current!.next
    }
    
    return counter
}

countNodes(head: h1)

countNodes(head: nil)

