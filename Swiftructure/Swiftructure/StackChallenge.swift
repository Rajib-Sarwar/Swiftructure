//
//  StackChalenge.swift
//  Swiftructure
//
//  Created by Chowdhury Md Rajib Sarwar on 10/2/24.
//

import Foundation

class StackChallenge {
    
    private var stack: Stack<Character> = []
    private let openParenthesis: [Character] = ["(", "{", "["]
    private let closeParenthesis: [Character] = [")", "}", "]"]
    
    func checkBalancedParenthesis(_ string: String) -> Bool {
        
        for character in string {
            if openParenthesis.contains(character) {
                stack.push(character)
            }
            
            if closeParenthesis.contains(character) {
                guard !stack.isEmpty() else { return false }
                
                if character == closeParenthesis[0] && stack.pop() != openParenthesis[0] {
                    return false
                }
                
                if character == closeParenthesis[1] && stack.pop() != openParenthesis[1] {
                    return false
                }
                
                if character == closeParenthesis[2] && stack.pop() != openParenthesis[2] {
                    return false
                }
            }
        }
        
        return stack.isEmpty()
    }
}
