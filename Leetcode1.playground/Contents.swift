//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given an array of integers, return indices of the two numbers such that they add up to a specific target.

//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//Further Instructions: Given nums = [2, 7, 11, 15], target = 9,

//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].

func twoSums (array: [Int], target: Int) -> (Int, Int){
    
    for i in 0..<array.count{
        
        var nextElement = i + 1
        if array[i] + nextElement == target{
            return(array[i], nextElement)
        }
        
    }
    return (0,0)
}

twoSums(array: [2, 7, 11, 15], target: 9)



