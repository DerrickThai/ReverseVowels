//
//  ReverseVowelsTests.swift
//  ReverseVowelsTests
//
//  Created by Derrick Thai on 2017-06-14.
//  Copyright © 2017 Derrick Thai. All rights reserved.
//

import Quick
import Nimble

@testable import ReverseVowels

class ReverseVowelsTests: QuickSpec {
    
    override func spec() {
        
        describe("reverseVowels") {
            
            it("should leave the empty string the same") {
                expect("".reverseVowels()).to(equal(""))
            }
            
            it("should leave strings with one vowel the same") {
                expect("Stan".reverseVowels()).to(equal("Stan"))
            }
            
            it("should reverse uppercase vowels") {
                expect("CARROT SENSE".reverseVowels()).to(equal("CERRET SONSA"))
            }
            
            it("should handle an even number of vowels") {
                expect("Derrick Thai".reverseVowels()).to(equal("Dirrack Thie"))
            }
            
            it("should handle an odd number of vowels") {
                expect("Awesomeness!".reverseVowels()).to(equal("ewesomenAss!"))
            }
            
            it("should not modify the original string") {
                var original = "original"
                expect(original.reverseVowels()).to(equal("ariginol"))
                expect(original).to(equal("original"))
            }
        }
    }
    
}
