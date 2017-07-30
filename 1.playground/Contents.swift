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

isThereAnInsertion(str1: "sale", str2: "sales")

//returns true

func isThereARemoval(str1: String, str2: String) -> (Bool, String){
    
    var sameCounter = 0
    
    for char in str2.characters {
        if str1.characters.contains(char){
            sameCounter += 1
            print("\(sameCounter)")
        }
    }
    
    if sameCounter + 1  == str1.characters.count {
        return (true, "Removal")
    }
    
    return (false, "No Removal")
}

isThereARemoval(str1: "sale", str2: "sle")

//returns true

isThereARemoval(str1: "bake", str2: "bke")

//returns true

isThereARemoval(str1: "bake", str2: "be")

//returns false

func isThereAReplacement (str1: String, str2: String) -> (Bool, String){

    var sameCounter = 0
    
    for char in str2.characters {
        if str1.characters.contains(char){
            sameCounter += 1
            print("\(sameCounter)")
        }
    }
    
    if (sameCounter + 1  == str1.characters.count) && (str2.characters.count == sameCounter + 1){
        return (true, "Replacement")
    }
    return (false, "Replacement")
}

isThereAReplacement(str1: "sake", str2: "bake")

//returns true 

isThereAReplacement(str1: "sale", str2: "bale")

//returns true 

isThereAReplacement(str1: "sara", str2: "zara")

//returns true 

isThereAReplacement(str1: "sara", str2: "zero")

//returns false

func editsTo (str1: String, str2: String) ->  (Bool, String){

    //insertion
    if str1.characters.count + 1 == str2.characters.count {
        return isThereAnInsertion(str1: str1, str2: str2)
    }
    
    //removal
    else if str1.characters.count - 1 == str2.characters.count {
        return isThereARemoval (str1: str1, str2: str2)
    }
    
    else if str1.characters.count == str2.characters.count {
        return isThereAReplacement(str1: str1, str2: str2)
    }
    
    return (false, "No edits")
}

editsTo(str1: "sale", str2: "sales")

//returns true - Insertion

editsTo(str1: "bake", str2: "bke")

//returns true - Removal

editsTo(str1: "bake", str2: "sake")

//returns true - Replacement 

editsTo(str1: "sara", str2: "rukhsana")

editsTo(str1: "sara", str2: "barra")

//false - No edits

//1.6 - Implement a method to peform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5c3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase (a - z).

//first solution

func stringCompression(input: String) -> String {
    var currentLetter: Character?
    var returnValue = ""
    var letterCounter = 0
    
    for letter in input.characters {
        if letter == currentLetter {
            letterCounter += 1
        } else {
            if let current = currentLetter {
                returnValue.append("\(current)\(letterCounter)")
            }
            currentLetter = letter
            letterCounter = 1
        }
    }
    if let current = currentLetter {
        returnValue.append("\(current)\(letterCounter)")
    }
    return returnValue
}

//second solution - More concise

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

//1.7 - Given an image represented by an NxN matrix, where each pixel in the image is 4 bytes, write a method to rotate the image by 90 degrees. Can you do this in place?

//1.8 - Write an algorithm such that if an element in an MxN matrix is 0, its entire row and column are set to 0.

//1.9 - Assumeyou have a method isSubstringwhich checks if one word is a substring of another. Given two strings, sl and s2, write code to check if s2 is a rotation of sl using only one call to isSubstring (e.g.,"waterbottle" is a rotation of"erbottlewat").

func isSubstring (str1: String) -> Bool {

    var string = str1 + str1
    
    return string.contains(str1)
}

isSubstring(str1: "erbottlewat")

//returns true 






