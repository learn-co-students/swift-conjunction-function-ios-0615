//  Sandbox.swift

import Foundation

/*

* Write your function here!

*/

func listWithElements(elements: [String], conjunction: String)->String {
    if conjunction != "and"
        && conjunction != "or"
        && conjunction != "&" {return "unknown conjunction"}
    
    switch elements.count {
    case 0: return ""
    case 1: return elements[0]
    case 2: return "\(elements[0]) \(conjunction) \(elements[1])"
    default: return threeOrMoreElements(elements, conjunction: conjunction)
    }
    
    
    return "error!!"
}

//Helper function
func threeOrMoreElements(elements: [String], conjunction:String)->String {
    var result: String = ""
    for var i = 0; i < elements.count - 1; i++ {
        result += elements[i] + ", "
    }
    if let lastElement = elements.last {
        result += "\(conjunction) \(lastElement)."
    }
    
    return result
}
