//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//4.2 Question: Given a sorted (increasing order) array with unique integer elements, write an algo­rithm to create a binary search tree with minimal height.

class Node<T> {
    var value: T
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: T) {
        self.value = value
    }
}

//sort the array 

var numbers = [0, 2, 3, 5, 10, 2]

func sortArray (array: [Int]) -> [Int] {
var newArray = array.sorted
    return newArray()
}

sortArray(array: numbers)

//find the middle value 

//This will serve as the top parent node 

func findMiddleVal (array: [Int]) -> Int {
    
    var middleIndex = array.count/2
    
    return array[middleIndex]
}

//create the root node and then create the binary tree 
