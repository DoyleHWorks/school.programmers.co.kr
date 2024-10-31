func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    guard arr.count >= 1 && arr.allSatisfy({$0 >= 1}) && divisor >= 1 else {
        print("입력한 배열의 길이는 1 이상이고, 배열의 요소는 모두 자연수이며, 입력한 숫자는 자연수이어야 합니다.")
        return []
    }
    
    guard arr.count == Set(arr).count else {
        print("입력한 배열에서 중복되는 요소는 없어야 합니다.")
        return []
    }
    
    let multiplesOfDivisor = arr.filter({$0.isMultiple(of: divisor)}).sorted()
    return multiplesOfDivisor.isEmpty ? [-1] : multiplesOfDivisor
}