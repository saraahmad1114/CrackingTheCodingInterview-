//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question: Given a sorted array of n integers that has been rotated an unknown number of times, write code to find an element in the array. You may assume that the array was originally sorted in increasing order. 

//input: find 5 in [15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14]

//output: 8(the index of 5 in the array)

//In terms of big O notation = would be O(n)

func indexOfElementIn(array: [Int], element: Int) ->Int?{

    for i in 0..<array.count {
        if element == array[i]{
            return i
        }
    }
    return nil
}

//Recursive implementation of binary search, which would be faster here: 

func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        return nil
        
    } else {
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
            
        } else if a[midIndex] < key {
            return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
            
        } else {
            return midIndex
        }
    }
}

var array = [15, 16, 19, 20, 25, 1, 3, 4, 5, 7, 10, 14]

binarySearch(array, key: 5, range: 0..<array.count)


//An iterative implementation of binary search in Swift:

func binarySearch2<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = a.count
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if a[midIndex] == key {
            return midIndex
        } else if a[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}

binarySearch(array, key: 5, range: 0..<array.count)

//another way

func findIndexOfIn(array: [Int], key: Int) -> Int? {
    
    if let i = array.index(of: key) {
        return i
    }
    return nil
}

findIndexOfIn(array: array, key: 5)



