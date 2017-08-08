//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.3 -  Implement an algorithm to delete a node in the middle (i.e., any node but the  rst and last node, not necessarily the exact middle) of a singly linked list, given only access to that node.

//EXAMPLE
//lnput:the node c from the linked lista->b->c->d->e->f
//Result: nothing is returned, but the new linked list looks likea->b->d->e- >f

//Step 1 

class Node: CustomStringConvertible{
    
    var value: Int
    var next: Node?
    var description: String{
        if next != nil {
            return ("\(value) ->   \(next!)")
        }
        else{
            return ("\(value) ->   \(next!)")
        }
    }
    init(value: Int) {
        self.value = value
    }
}



