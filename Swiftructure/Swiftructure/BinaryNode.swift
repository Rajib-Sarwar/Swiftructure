//
//  BinaryNode.swift
//  
//
//  Created by Chowdhury Md Rajib Sarwar on 10/1/24.
//

import Foundation

class BinaryNode<Type: Equatable> {
    var value: Type
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(_ value: Type) {
        self.value = value
    }
}

extension BinaryNode {
    func traverseInOrder(visit: (Type) -> Void) {
        leftChild?.traverseInOrder(visit: visit)
        visit(value)
        rightChild?.traverseInOrder(visit: visit)
    }
    
    func traversePreOrder(visit: (Type) -> Void) {
        visit(value)
        leftChild?.traversePreOrder(visit: visit)
        rightChild?.traversePreOrder(visit: visit)
    }
    
    func traversePostOrder(visit: (Type) -> Void) {
        leftChild?.traversePostOrder(visit: visit)
        rightChild?.traversePostOrder(visit: visit)
        visit(value)
    }
}

extension BinaryNode {
    func iterativeInOrder(visit: (Type) -> Void) {
    }
    
    func iterativePreOrder(visit: (Type) -> Void) {
        
    }
    
    func iterativePostOrder(visit: (Type) -> Void) {
    }
}

extension BinaryNode: CustomStringConvertible {
    public var description: String {
        return diagram(for: self)
    }
    
    private func diagram(for node: BinaryNode?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
        guard let node = node else {
            return root + "nil\n"
        }
        
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        
        return diagram(for: node.rightChild,
                       top + " ", top + "---", top + "/ ")
        + root + "\(node.value)\n"
        + diagram(for: node.leftChild,
                  bottom + "\\ ", bottom + "---", bottom + " ")
    }
}


