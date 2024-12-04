import Foundation

func solution(_ s: String) -> Bool
{
    guard s.first == "(" && s.last == ")" else { return false } // Early Exit
    
    var stack: [Character] = []
    stack.reserveCapacity(s.count)

    for char in s {
        if char == ")" && stack.last == "(" {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    
    return stack.isEmpty
}