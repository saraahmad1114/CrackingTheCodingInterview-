//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Chapter 4 

//4.1 - Given a directed graph, design an algorithm to find out whether there is a route between two nodes.

//1. Define a linked list 

//class Node: CustomStringConvertible{
//    var value: Int
//    var next: Node?
//    
//    var description: String{
//        if next != nil {
//            return "\(value)->\(next!)"
//        }
//        else {
//            return "\(value)->\(next)"
//        }
//    }
//    init(value: Int) {
//        self.value = value
//    }
//}

enum state {

    case Unvisited
    case Visited
    case Visiting
}

//need linked list


//4.2 - Given a sorted (increasing order) array with unique integer elements, write an algo­rithm to create a binary search tree with minimal height

//create a binary tree

class Node<T> {
    var value: T
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: T) {
        self.value = value
    }
}

//4.3 - Given a binary tree, design an algorithm which creates a linked list of all the nodes at each depth (e.g., if you have a tree with depth D, you'll have D linked lists).

//4.4 - Check Balanced: Implement a function to check if a binary tree is balanced. For the purposes of this question, a balanced tree is de ned to be a tree such that the heights of the two subtrees of any node never differ by more than one.




extension Int {
    var wordForm:String {
        let numberValue = NSNumber(value: self)
        var formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return "\(formatter.string(for: self)!)"
    }
}

func printCharNum(number: Int) -> Int{
    
    var numberWordCount = 0
    
    var containerString = number.wordForm
    
    containerString = containerString.replacingOccurrences(of: " ", with: "")
    
    if containerString.characters.contains("-"){
        containerString = containerString.replacingOccurrences(of: "-", with: "")
        print(containerString)
        return containerString.characters.count
    }
    print(containerString)
    return containerString.characters.count
    
}

//printCharNum(number: 178)

//Another way would be to do the following: if you insist on using the loop

func printCharactersOfNumbers(givenNum: Int) -> Int {

    var containerString = ""
    var secondContainer = ""
    var dictionary = [Int: String]()
    
    var counter = 0
    
    for number in 1...1000 {
        
        containerString = number.wordForm.replacingOccurrences(of: " ", with: "")
        
        if dictionary[number] == nil {
            dictionary[number] =  containerString
        }
    }
    
    print(dictionary)
  
    for (key, value) in dictionary {
        
        if key == givenNum {
            secondContainer = dictionary[key]!
        }
    }
    
    secondContainer = secondContainer.replacingOccurrences(of: " ", with: "")
    if secondContainer.characters.contains("-"){
        secondContainer = secondContainer.replacingOccurrences(of: "-", with: "")
        print(secondContainer)
        return secondContainer.characters.count
    }
    print(secondContainer)
    return secondContainer.characters.count
}

printCharactersOfNumbers(givenNum: 750)


