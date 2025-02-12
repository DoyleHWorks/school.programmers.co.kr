import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var coveredNum = 0
    var result = 0
    for num in section {
        guard num > coveredNum else { continue }
        coveredNum = num + (m - 1)
        result += 1
    }
    return result
}