//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//10.4 - You are given an array-like data structure Listy which lacks a size method. It does, however an elementAt(i) method that returns the element at index i in 0(1) time. If i is beyond the bounds of the data structure, it returns -1. (For this reason, the data structure only supports positive integers) Given a Listy whch contains sorted, positive integers, find the index at which an element X occurs. If X occurs mutlitple times, you may return any index. 

//Classic Binary search problem

func binarySearch2<T: Comparable>(_ a: [T], key: T) -> Int {
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
    return -1
}

