//
//  Stack.swift
//  Swiftructure
//
//  Created by Chowdhury Md Rajib Sarwar on 10/1/24.
//

import Foundation

struct Stack<Type> {
    var storage: [Type] = []
    
    func isEmpty() -> Bool {
        return peek() == nil
    }
    
    func peek() -> Type? {
        return storage.last
    }
    
    mutating func push(_ item: Type) {
        storage.append(item)
    }
    
    @discardableResult
    mutating func pop() -> Type? {
        return storage.popLast()
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage.map{ "\($0)" }.joined(separator: " ")
    }
}
