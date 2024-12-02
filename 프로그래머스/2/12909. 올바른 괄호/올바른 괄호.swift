import Foundation

func solution(_ s: String) -> Bool
{
    guard s.first == "(" && s.last == ")" else {
        return false
    }
    
    var bracketMatchingCount = 0
    
    for char in s {
        guard bracketMatchingCount >= 0 else { return false }
        if char == "(" {
            bracketMatchingCount += 1
        } else if char == ")" {
            bracketMatchingCount += -1
        }
    }

    return bracketMatchingCount == 0
}