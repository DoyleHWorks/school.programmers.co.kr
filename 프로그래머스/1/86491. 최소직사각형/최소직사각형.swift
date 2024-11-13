import Foundation

func solution(_ sizes: [[Int]]) -> Int {
    var mutableSizes = sizes
    var maxWidthIndex = 0
    var maxHeightIndex = 0
    
    for index in mutableSizes.indices where mutableSizes[index][0] < mutableSizes[index][1] {
        mutableSizes[index].swapAt(0, 1)
    }
    
    for index in mutableSizes.indices {
        if mutableSizes[index][0] > mutableSizes[maxWidthIndex][0] { maxWidthIndex = index }
        if mutableSizes[index][1] > mutableSizes[maxHeightIndex][1] { maxHeightIndex = index }
    }
    
    return mutableSizes[maxWidthIndex][0] * mutableSizes[maxHeightIndex][1]
}
