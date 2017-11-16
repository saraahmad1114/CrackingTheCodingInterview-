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
let newArray = array.sorted
    return newArray()
}

sortArray(array: numbers)

//find the middle value 

//This will serve as the top parent node

func findMiddleVal (array: [Int]) -> Int {
    let middleIndex = array.count/2
    return array[middleIndex]
}

//create the root node and then create the binary tree
func buildTree(array: [Int], left: Int, right: Int) -> BinaryNode {
    
    if (left <= right) {
        let middle = Int((left + right) / 2)
        let leftSubtree = buildTree(array: array, left: left, right: middle - 1)
        let rightSubtree = buildTree(array: array, left: middle + 1, right: right)
        
        return BinaryNode(data: array[middle], left: leftSubtree, right: rightSubtree)
    }
    return nil
}

//func exercise3() {
//    let array = [1, 2, 3, 4, 5, 6, 7]
//    let tree = buildTree(array: array, left: 0, right: array.count - 1)
//    inOrder(tree, operation: { (data) in })
//}

//public func run() {
//    exercise3()
//}







