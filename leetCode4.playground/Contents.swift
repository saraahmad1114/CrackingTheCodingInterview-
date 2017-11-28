//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: There are two sorted arrays nums1 and nums2 of size m and n respectively.

//Find the median of the two sorted arrays.

//1. Use mergeSort to get the fully combined array, thats sorted.
func merge(leftPile: [Int], rightPile: [Int]) -> Double {
    var leftIndex = 0
    var rightIndex = 0
    var median = 0.0
    var middle = 0

    var orderedPile = [Int]()

    while leftIndex < leftPile.count && rightIndex < rightPile.count {
        if leftPile[leftIndex] < rightPile[rightIndex] {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        } else if leftPile[leftIndex] > rightPile[rightIndex] {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        } else {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
    }
 
    while leftIndex < leftPile.count {
        orderedPile.append(leftPile[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightPile.count {
        orderedPile.append(rightPile[rightIndex])
        rightIndex += 1
    }
    
    if orderedPile.count % 2 == 0  {
        middle = orderedPile.count/2
        median = (Double(orderedPile[middle] + orderedPile[middle-1])/2)
    }
    else{
        middle = orderedPile.count/2
        median = Double(orderedPile[middle])
    }
    return median
}

merge(leftPile: [1, 3], rightPile: [2])

merge(leftPile: [1, 2], rightPile: [3, 4])




