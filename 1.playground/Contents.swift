//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question 1.1 - Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures

func areStringsUnique (str1: String) -> Bool {
    return str1.characters.count == Set(str1.characters).count
}

//Another way to do the above question

func determineUniqueness (of str1: String) -> Bool {
    
    var dictionary = [String: Int]()
    
    for char in str1.characters {
        var newChar = String(char)
        if dictionary[newChar] != nil {
            dictionary[newChar]! += 1
        } else {
            dictionary[newChar] = 1
        }
    }
    
    var valuesArray = Array(dictionary.values)
    for i in 0..<valuesArray.count {
        if valuesArray[i] >= 2 {
            return false
        }
    }
    
    return true

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

areStringsPermutations(str1: "nala", str2: "simba")

areStringsPermutations(str1: "add", str2: "dad")

//1.3 - Write a method to replace all spaces in a string with '%20  You may assume that the string has sufficient space at the end to hold the additional characters,and that you are given the "true" length of the string.

//EXAMPLE
//Input: "Mr John Smith ", 13 Output: "Mr%20John%20Smith"

func removeSpacesWith (str1: String) -> String {
    
    //var newString = String()
    //newString = str1.replacingOccurrences(of: " ", with: "%20")
    return str1.replacingOccurrences(of: " ", with: "%20")
}



//1.4 - Given a string, write a function to check if it is a permutation of a palin­drome. A palindrome is a word or phrase that is the same  rwards and backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words.

func isStringPermutationOfPalindrome(str1: String, str2: String) -> Bool {
    if String(str1.characters) == String(str1.characters.reversed()){
        if frequencyDictionary(str1: str1) == frequencyDictionary(str1: str2){
            return true
        }
    }
    return false
}

isStringPermutationOfPalindrome(str1: "anna", str2: "nana")


//1.5 - There are three types of edits that can be performed on strings; insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away. 

func isThereAnInsertion(str1: String, str2: String) -> (Bool, String){
    var sameCounter = 0
    
    for char in str1.characters {
        if str2.characters.contains(char){
            sameCounter += 1
            print("\(sameCounter)")
        }
    }
    
    if sameCounter == str1.characters.count {
        return (true, "Insertion")
    }
    return (false, "No Insertion")
}

func isThereARemoval(str1: String, str2: String) -> (Bool, String){
    
    return (false, "No Removal")
}


func editsTo (str1: String, str2: String) ->  (Bool, String){

    //insertion
    if str1.characters.count + 1 == str2.characters.count {
        return isThereAnInsertion(str1: str1, str2: str2)
    }
    
    //removal
    else if str1.characters.count - 1 == str2.characters.count {
        return isThereARemoval (str1: str1, str2: str2)
    }
    
    //remove a character
    
    return (false, "No edits")
}

isThereAnInsertion(str1: "sale", str2: "sales")

//returns true

editsTo(str1: "sale", str2: "sales")

//returning false


//1.6 - Implement a method to peform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5c3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase (a - z).


func compress(input: String) -> String {
    var returnValue = ""
    var letterCounter = 0
    var letterArray = Array(input.characters)
    
    for i in 0 ..< letterArray.count {
        letterCounter += 1
        
        if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
            returnValue += "\(letterArray[i])\(letterCounter)"
            letterCounter = 0
        }
    }
    
    return returnValue
}



