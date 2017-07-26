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

//1.3 - Write a method to replace all spaces in a string with '%20  You may assume that the string has sufficient space at the end to hold the additional characters,and that you are given the "true" length of the string.

//EXAMPLE
//Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"

func removeSpacesWith (str1: String) -> String {
    
    var newString = String()
    newString = str1.replacingOccurrences(of: " ", with: "%20")
    return newString

}

//1.4 - Given a string, write a function to check if it is a permutation of a palin­drome. A palindrome is a word or phrase that is the same  rwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

func isStringPermutationOfPalindrome(str1: String, str2: String) -> Bool {

    if String(str1.characters) == String(str2.characters.reversed()){
        if frequencyDictionary(str1: str1) == frequencyDictionary(str1: str2){
            return true
        }
    }
    return false
}

//1.5 - There are three types of edits that can be performed on strings; insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away. 

//1.6 - Implement a method to peform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5c3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase (a - z). 



