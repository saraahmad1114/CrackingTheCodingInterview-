//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func findTheMax (array: [Int]) -> Int {

    var maxVal = 0
    var product = 1
    var productArray = [Int]()
    
    for i in 0..<array.count {
        for (index, value) in array.enumerated(){
            product = array[i] * array[index] * value
            productArray.append(product)
        }
    }
    return productArray.max()!
}

var array = [6, 7, 9, 7, 10, 11, 16]

findTheMax(array: array)
