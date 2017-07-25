//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//10.5 Given a sorted array of strings that is interspersed with empty strings, write a method to find the location of a given string.

var array = ["at", "", "", "", "ball", "", "", "car", "", "", "dad", "", ""]

func binarySearch (array: [String], str: String, first: Int, last: Int) -> Int{

    if first > last{
        return -1
    }
    
    var mid = (last + first)/2

    
}


