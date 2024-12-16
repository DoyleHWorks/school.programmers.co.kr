import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let totalTiles = brown + yellow
    
    for height in 1...Int(sqrt(Double(totalTiles))) {
        if totalTiles % height == 0 {
            let width = totalTiles / height
            
            if (width - 2) * (height - 2) == yellow {
                return [width, height]
            }
        }
    }
    
    return [-1, -1]
}