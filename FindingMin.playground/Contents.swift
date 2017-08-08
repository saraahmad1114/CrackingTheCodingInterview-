//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Finding the minimum value amongst a group of arrays, without using the .min function 

func findMin(number inArray: [Int]) -> Int? {
    
    guard inArray.count > 1 else {return nil}
    
    var minNumber: Int? = inArray[0]
    
    for number in inArray {
        
        if number < minNumber! {
            minNumber = number
        }
        
    }
    return minNumber!
}

findMin(number: [-9, -10, 4])

findMin(number: [1, 2, 3, 4])
