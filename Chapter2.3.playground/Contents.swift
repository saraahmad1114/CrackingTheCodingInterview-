//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.3 -  Implement an algorithm to delete a node in the middle (i.e., any node but the  rst and last node, not necessarily the exact middle) of a singly linked list, given only access to that node.

//EXAMPLE
//lnput:the node c from the linked lista->b->c->d->e->f
//Result: nothing is returned, but the new linked list looks likea->b->d->e- >f

//Step 1: Define the linked list Class

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

//Step 2: Generate the list

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

//Step 3: Count the number of nodes in the linked list 

func countNodes(head: Node?) -> Int {
    
    var current = head
    var counter = 0
    
    while current != nil {
        counter += 1
        current = current!.next
    }
    
    return counter
}

//Step 3: Delete Node 

func deleteNode(h: Node?) -> Bool{
    
    if h == nil || h?.next == nil {
        return false
    }
    let nextNode = h?.next
    h?.value = (nextNode?.value)!
    h?.next = nextNode?.next
    return true
}

print(h1)

print(deleteNode(h: h1))

print(h1)






