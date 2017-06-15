//
//  String+ReverseVowels.swift
//  ReverseVowels
//  Carrot Sense Technical Question
//
//  Created by Derrick Thai on 2017-06-14.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

extension String {
    
    static let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    
    /**
        Reverses the vowels in a string (assumes 'y' and 'Y' are not vowels)
     
        - Parameter str: The string to reverse the vowels of
        - Returns: A new string with the vowels of `str` reversed
     */
    func reverseVowels() -> String {
        // Ensure string is non-empty
        guard !self.isEmpty else {
            return ""
        }
        
        var chars = Array(self.characters)
        
        // Do a single pass through the characters of string and
        // save the indices of the vowels in an array
        let vowelIndices = chars.enumerated().reduce([]) { acc, next in
            return String.vowels.contains(next.element) ? acc + [next.offset] : acc
        }
        
        // Swap the ith vowel with the ith-last vowel
        let length = vowelIndices.count
        for index in 0 ..< length / 2 {
            let frontIndex = vowelIndices[index]
            let backIndex = vowelIndices[length - 1 - index]
            
            // A cool way to swap using tuples
            (chars[frontIndex], chars[backIndex]) = (chars[backIndex], chars[frontIndex])
        }
        
        return String(chars)
    }
}
