//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//2. Write a method to sort an array of strings so that all the anagrams are next to each other.

//**Key = Anagram - are words that have different arrangements but same number of letters and the same letters

//create frequency dictionary / Can also create a hash table

func createFrequencyTable (word: String) -> [String: Int]{
    var dictionary = [String:Int]()
    for char in word.characters{
        let stringChar = String(char)
        if dictionary[stringChar] != nil {
            dictionary[stringChar]! = dictionary[stringChar]! + 1
        }
        else {
            dictionary[stringChar] = 1
        }
    }
    print(dictionary)
    return dictionary
    
}


func putAnagramsTogether (array : [String]) -> [String]{

    guard array.count > 1 else {return array}
    
    var newArray = [String]()
    
    
    
    return newArray

}


