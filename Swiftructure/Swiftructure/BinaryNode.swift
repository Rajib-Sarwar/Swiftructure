//
//  BinaryNode.swift
//  
//
//  Created by Chowdhury Md Rajib Sarwar on 10/1/24.
//

import Foundation

class BinaryNode<Type> {
    var value: Type
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(_ value: Type) {
        self.value = value
    }
}

extension BinaryNode {
    
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
