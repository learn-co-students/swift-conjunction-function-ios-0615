//  Sandbox.swift

import Foundation

/*

* Write your function here!

*/

func listWithElements(elements: [String], conjunction: String) -> String {
    let validConjunctions = ["and", "or", "&"]
    
    if !validConjunctions.contains(conjunction) {
        return "unknown conjunction"
    }
    
    switch elements.count {
    case 0:
        return ""
    case 1:
        return elements[0]
    case 2:
        return "\(elements[0]) \(conjunction) \(elements[1])"
    default:
        let lastIndex = elements.count - 1
        var list = "\(elements[0])"
        
        for var i = 1; i < elements.count; i++ {
            list += ", "
            if i == lastIndex {
                list += "\(conjunction) "
            }
            list += elements[i]
        }
        return list
    }
}

