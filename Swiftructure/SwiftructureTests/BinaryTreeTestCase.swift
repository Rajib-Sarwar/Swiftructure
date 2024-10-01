//
//  BinaryTreeTestCase.swift
//  SwiftructureTests
//
//  Created by Chowdhury Md Rajib Sarwar on 10/1/24.
//

import XCTest
@testable import Swiftructure

final class BinaryTreeTestCase: XCTestCase {

    var tree: BinaryNode<Int> = {
        let zero = BinaryNode(0)
        let one = BinaryNode(1)
        let five = BinaryNode(5)
        let seven = BinaryNode(7)
        let eight = BinaryNode(8)
        let nine = BinaryNode(9)
        
        seven.leftChild = one
        one.leftChild = zero
        one.rightChild = five
        seven.rightChild = nine
        nine.leftChild = eight
        
        return seven
    }()
    
    func test_visualizeBinaryTree() {
        print(tree.description)
    }
    
    func test_traverseInOrder() {
        var testArray: [Int] = []
        tree.traverseInOrder { testArray.append($0) }
        XCTAssertEqual(testArray, [0,1,5,7,8,9])
    }
    
    func test_traversePreOrder() {
        var testArray: [Int] = []
        tree.traversePreOrder { testArray.append($0) }
        XCTAssertEqual(testArray, [7,1,0,5,9,8])
    }
    
    func test_traversePostOrder() {
        var testArray: [Int] = []
        tree.traversePostOrder { testArray.append($0) }
        XCTAssertEqual(testArray, [0,5,1,8,9,7])
    }

}
