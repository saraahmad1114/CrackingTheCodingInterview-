//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Question 3: Given a string, find the length of the longest substring without repeating characters.

//Examples:

//Given "abcabcbb", the answer is "abc", which the length is 3.

//Given "bbbbb", the answer is "b", with the length of 1.

//Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

func lengthOfLongestSubstring(string: String) -> Int {
    var substringChars: [Character] = []
    var longest = 0
    
    for c in string {
        if !substringChars.contains(c) {
            substringChars.append(c)
        } else {
            longest = max(longest, substringChars.count)
            substringChars = [c]
        }
    }
    longest = max(longest, substringChars.count)
    return longest
}

lengthOfLongestSubstring(string: "abcabcbb")


lengthOfLongestSubstring(string: "bbbbb")

