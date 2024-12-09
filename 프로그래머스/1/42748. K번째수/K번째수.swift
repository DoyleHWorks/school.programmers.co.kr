import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    var results: Array<Int> = []
    
    for command in commands {
        let startIndex = command[0] - 1
        let endIndex = command[1] - 1
        let targetIndex = command[2] - 1
        let result = array[startIndex...endIndex].sorted()[targetIndex]
        results.append(result)
    }
    
    return results
}