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

//create an array of frequency dictionaries 

func appendAllDictionaries (array: [String]) -> [[String:[String:Int]]]{
    
    var frequencyArray = [[String:[String: Int]]]()
    
    for word in array {
        var firstDictionary = createFrequencyTable(word: word)
        var secondDictionary = [word:firstDictionary]
        
        frequencyArray.append(secondDictionary)
    }
    return frequencyArray
}

//sort the based on whether they are anagrams and get them next to each other 

func sortFrequenceDictionary (array: [String]) -> [String]{

    var newArray = [String]()
    
    var frequencyArray = appendAllDictionaries(array: array)
    
    
    return newArray

}





