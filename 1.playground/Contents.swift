//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question 1.1 - Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures

func areStringsUnique (str1: String) -> Bool {
    return str1.characters.count == Set(str1.characters).count
}

//1.2 - Given two strings,write a method to decide if one is a permutation of the other
func frequencyDictionary (str1: String) -> [String: Int]{

    var dictionary = [String: Int]()
    
    for char in str1.characters {
        var newChar = String(char)
        if dictionary[newChar] != nil {
            dictionary[newChar]! += 1
        } else {
            dictionary[newChar] = 1
        }
    }
    return dictionary

}

func areStringsPermutations (str1: String, str2: String) -> Bool{
    return frequencyDictionary(str1: str1) == frequencyDictionary(str1: str2)
}

//1.3 - Write a method to replace all spaces in a string with '%20  You may assume that the string has suf cient space at the end to hold the additional characters,and that you are given the "true" length of the string. (Note: If implementing in Java,please use a character array so that you can perform this operation in place.)

//EXAMPLE
//Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"

