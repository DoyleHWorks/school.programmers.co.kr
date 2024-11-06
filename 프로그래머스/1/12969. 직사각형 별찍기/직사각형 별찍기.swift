import Foundation

// Algorithm 1 - Optional Binding
/*
if let input = readLine() {
    let n = input.components(separatedBy: " ").compactMap { Int($0) }
    
    if n.count == 2 && n.allSatisfy({ (1...1000).contains($0) }) {
        let rectangle = String(repeating: (String(repeating: "*", count: n[0]) + "\n"), count: n[1])
        print(rectangle)
    } else {
        print("올바른 입력을 해주세요.")
    }
} else {
    print("입력이 잘못되었습니다.")
}
*/
// Alogirthm 2 - Forced Unwrapping

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let rectangle = String(repeating: (String(repeating: "*", count: n[0]) + "\n"), count: n[1])

print (rectangle)