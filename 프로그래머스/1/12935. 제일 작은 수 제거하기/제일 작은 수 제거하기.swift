func solution(_ arr: [Int]) -> [Int]? {
    guard arr.count >= 1 && arr.count == Set(arr).count else {
        print("입력값은 길이 1 이상인 배열이어야 하며, 배열의 요소에는 중복되는 값이 없어야 한다.")
        return nil
    }
    
    var numbers = arr
    
    // if let minValue = numbers.min(), let index = numbers.firstIndex(of: minValue) {
    //     numbers.remove(at: index)
    //     return numbers.isEmpty ? [-1] : numbers
    // } else {
    //     return nil
    // }
    
    if let minIndex = numbers.indices.min(by: { numbers[$0] < numbers[$1] }) {
        numbers.remove(at: minIndex)
        return numbers.isEmpty ? [-1] : numbers
    } else {
        return nil
    }
}
