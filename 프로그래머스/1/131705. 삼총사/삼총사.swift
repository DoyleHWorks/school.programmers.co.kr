import Foundation

func solution(_ numbers: [Int]) -> Int {
    guard (3...13).contains(numbers.count), numbers.allSatisfy({ (-1000...1000).contains($0) }) else {
        print("3 ≤ 입력값의 길이 ≤ 13, -1,000 ≤ 입력값의 각 원소 ≤ 1,000 이어야 합니다.")
        return -1
    }
    
    var possibleCaseCount = 0
    var combination = [Int](repeating: 0, count: 3) // 중복된 배열 생성 방지

    func recursive(_ depth: Int, _ start: Int) {
        if depth == 3 { // 종료 조건
            if combination.reduce(0, +) == 0 {
                possibleCaseCount += 1
            }
            return
        }
        
        // depth 1에서 남은 요소가 충분하지 않으면 건너뜀
        if depth == 1 && start >= numbers.count - 1 {
        	return 
        }
        
        for index in start..<numbers.count { // 재귀 단계
            combination[depth] = numbers[index]
            recursive(depth + 1, index + 1)
        }
    }
    
    recursive(0, 0)
    
    return possibleCaseCount
}