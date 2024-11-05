func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]]? {
    guard arr1.count == arr2.count, arr1.allSatisfy({ $0.count == arr2.first?.count }), arr2.allSatisfy({ $0.count == arr1.first?.count }),
    arr1.count <= 500, arr2.count <= 500, arr1.allSatisfy({$0.count <= 500}), arr2.allSatisfy({$0.count <= 500}) else {
        print("두 입력값의 행과 열의 길이는 서로 같고, 500을 넘지 않아야 합니다.")
        return nil
    }
    
    // Algorithm 1
    /*
    var sumArray: [[Int]] = []
    
    for i in 0..<arr1.count {
        var newElement = Array<Int>()
        for j in 0..<arr1[i].count {
            newElement.append(arr1[i][j] + arr2[i][j])
        }
        sumArray.append(newElement)
    }

    return sumArray
    */
    
    //Algorithm 2
    let sumArray = zip(arr1, arr2).map({ zip($0, $1).map({ $0 + $1 }) })
    return sumArray
}