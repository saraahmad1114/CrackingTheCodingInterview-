//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.5 - Sum Lists: You have two numbers represented by a linked list, where each node contains a single digit.The digits are stored in reverse order, such that the 1 's digit is at the head of the list. Write a function that adds the two numbers and returns the sum as a linked list.

//EXAMPLE

//Input:(7-> 1 -> 6) + (5 -> 9 -> 2).That is,617 + 295. Output:2 -> 1 -> 9.Thatis,912.
//FOLLOW UP
//Suppose the digits are stored in forward order. Repeat the above problem. EXAMPLE
//lnput:(6 -> 1 -> 7) + (2 -> 9 -> 5).That is,617 + 295. Output:9 -> 1 -> 2.Thatis,912.

//1. Define the linked list

class Node: CustomStringConvertible{
    var value: Int
    var next: Node?
    var description: String{
        if next != nil {
          return "\(value) -> \(next!)"
        }
        else{
            return "\(value) -> \(next)"
        }
    }
    init(value: Int) {
        self.value = value
    }
}

//2. Generate the linked list

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

let list = generateList(num: 716)

//prints 7 -> 1 -> 6 -> nil

//3. Reverse the linked list 

func reverseLinkedList (head: Node?) -> Node?{

    var current = head
    var prev: Node?
    var next: Node?
    
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return prev
}

let reversedList = reverseLinkedList(head: list)

//prints 6 -> 1 -> 7 -> nil

//4. Get the reversed numbers 

func getValuesFrom (head: Node?) -> Int {

    var string = ""
    var current = head
    
    while current != nil {
        string += String(describing: current?.value)
        current = current?.next
    }
    
    return Int(string)!
}












