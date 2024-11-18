import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var clothesCategorized: [String:Int] = [:]
    
    for i in clothes.indices {
        clothesCategorized[clothes[i][1], default: 0] += 1
    }

    let combinationCount = clothesCategorized
        .map({ $0.value + 1 })
        .reduce(1, *)
    
    return combinationCount - 1
}