//: Playground - noun: a place where people can play

import UIKit

//Chapter 2- 2.6: Palindrome: Implement a function to check if a linked list is a palindrome.

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

let listTwo = generateList(num: 506)

//prints 5 -> 0 -> 6 -> nil

let listThree = generateList(num: 999)

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

func isLinkedListPalindrome(number: Int) -> Bool {
    
    var head = generateList(num: number)
    
    var currentList = head
    
    let reversedHead = reverseLinkedList(head: head)
    
    var notCurrentList = reversedHead
    
    while currentList != nil {
        
        if notCurrentList?.value != currentList.value {
            print("\(notCurrentList?.value) \(currentList.value)")
            return false
        }
        currentList = currentList.next!
        notCurrentList = notCurrentList!.next
    }

    return true
    
}

isLinkedListPalindrome(number: 890)

//prints false

isLinkedListPalindrome(number: 89)

//returns false

isLinkedListPalindrome(number: 909)

//some sort of error! Here 

//fatal error: unexpectedly found nil while unwrapping an optional value 

//getting an error here


//extension Node{
//    static func ==(lhs: Node, rhs: Node) -> Bool {
//        if lhs.value != rhs.value {
//            return false
//        }
//        switch (lhs.next, rhs.next) {
//        case (nil, nil):
//            // Both tails are == nil:
//            return true
//        case let (lvalue?, rvalue?):
//            // Both tails are != nil:
//            return lvalue == rvalue // Recursive call
//        default:
//            // One tails is nil and the other isn't:
//            return false
//        }
//    }
//}



