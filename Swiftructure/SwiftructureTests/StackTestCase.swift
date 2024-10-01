//
//  StackTestCase.swift
//  SwiftructureTests
//
//  Created by Chowdhury Md Rajib Sarwar on 10/1/24.
//

import XCTest
@testable import Swiftructure

final class StackTestCase: XCTestCase {

    var stack = Stack<Int>()
    
    override func setUp() {
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
    }
    
    func test_push() {
        XCTAssertEqual(stack.description, "1 2 3 4")
    }

    func test_pop() {
        XCTAssertEqual(stack.pop(), 4)
    }
    
    func test_peek() {
        XCTAssertEqual(stack.peek(), 4)
    }
    
    func test_isEmpty() {
        XCTAssertFalse(stack.isEmpty())
    }
    
    func test_arrayLiteral() {
        let stack: Stack = ["Ayon", "Ayham", "Ihaan"]
        XCTAssertEqual(stack, ["Ayon", "Ayham", "Ihaan"])
    }
}
