//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func findMax (number inArray: [Int]) -> Int? {
    
    guard inArray.count > 1 else {return nil}
    
    var maxNumber: Int? = inArray[0]
    
    for number in inArray {
        
        if number > maxNumber! {
            maxNumber = number
        }
        
    }
    return maxNumber!
}

findMax(number: [10, 1, 6, 80])

findMax(number: [22, 77, -100])
