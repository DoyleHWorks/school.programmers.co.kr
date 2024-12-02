import Foundation

func solution(_ s: String) -> Bool
{
    guard s.first == "(" && s.last == ")" else {
        return false
    }
    
    var leftBracketCount = 0, rightBracketCount = 0
    
    for char in s {
        if char == "(" {
            leftBracketCount += 1
        } else if char == ")" {
            rightBracketCount += 1
        }
    }

    return leftBracketCount == rightBracketCount
}