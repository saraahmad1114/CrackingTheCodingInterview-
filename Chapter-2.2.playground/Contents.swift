//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2.2 - Return Kth to Last: Implement an algorithm to  nd the kth to last element of a singly linked list.
//the Kth element is the last in the linked list


//Step: 1 

//Define the Node Class

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

//Step: 2

//Generate the linked list

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

//Step: 3

//Count the number of nodes in the linked list

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

//Step: 4 

//return Kth element

func node(atIndex: Int, forList: Node?) -> Node? {
    
    var current = forList
    
    if atIndex >= 0 {
        
        for _ in 0..<atIndex {
            if current == nil {
                return nil
            }
            current = current?.next
        }
    } else {
        return nil
    }
    
    return current
}

var list = generateList()

print(list)

//generates the list

countNodes(head: list)

//counts the number of nodes, so that you know where the nil is at the end of the linked list

node(atIndex: 20, forList: list)

//the 21st element is the nil, therefore the Kth element is the 20th element in the linked list 

//Step 5: Value at the Index

func value(atIndex: Int, forList: Node?) -> Int {
    
    var current = forList
    
    if atIndex >= 0 {
        for _ in 0..<atIndex {
            if current == nil {
                return -1
            }
            current = current?.next
        }
    } else {
        return -1
    }
    
    return current!.value
}

print(list)

//(1) -> (7) -> (0) -> (5) -> (6) -> (7) -> (3) -> (6) -> (8) -> (4) -> (3) -> (5) -> (1) -> (0) -> (0) -> (8) -> (1) -> (3) -> (9) -> (9) -> (7) -> nil

value(atIndex: 20, forList: list)

//returns 7

//Step 6: Kth element from the end 

func fromEnd(offset: Int, forList: Node?) -> Node? {
    
    var current = forList
    var result = forList
    
    if offset < 0 {
        return nil
    }
    
    for _ in 0..<offset {
        if current == nil {
            return nil
        }
        current = current!.next
    }
    
    
    while current?.next != nil {
        current = current!.next
        result = result!.next
    }
    
    
    return result
}

fromEnd(offset: 0, forList: list)

//returns the last element, which is 3

//(1) -> (2) -> (4) -> (4) -> (9) -> (6) -> (7) -> (5) -> (6) -> (4) -> (7) -> (0) -> (1) -> (6) -> (9) -> (7) -> (7) -> (2) -> (3) -> (0) -> (3) -> nil

var arrayOne = [1, 2, 3, 4, 10, 11]

var sum = 0

for i in 0..<arrayOne.count {
    sum += arrayOne[i]
}
print(sum)


//func compareChallenges(aliceArray: [Int], bobArray: [Int]) -> (Int, Int){
//    
//    guard aliceArray.count == bobArray.count else {return (0, 0)}
//    
//    var aliceBobPoints : (Int, Int) = (0,0)
//    
//    for (index, item) in aliceArray.enumerated() {
//        if item > bobArray[index]{
//           aliceBobPoints.0 += 1
//        }
//        else if item < bobArray[index]{
//            aliceBobPoints.1 += 1
//        }
//        else {
//            print("No points")
//        }
//    }
//    return aliceBobPoints
//}

func compare (A: [Int], B: [Int]) -> String{
    
    var APoints = 0
    
    var BPoints = 0
    
    for (index, item) in A.enumerated() {
        if item > B[index]{
            APoints += 1
        }
        else if item < B[index]{
            BPoints += 1
        }
    }
    
    return (APoints, BPoints)
}

var alice = [5, 6, 7]
var bob = [3, 6, 10]

//compareChallenges(aliceArray: alice, bobArray: bob)

print(compare(A: alice, B: bob))












