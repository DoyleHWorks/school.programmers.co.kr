import Foundation

func solution(_ n: Int) -> Int {
    guard (1...100000000).contains(n) else {
        print("입력값은 1 이상 100,000,000 이하인 자연수이어야 한다.")
        return 0
    }
    
    func toTernary(_ n: Int) -> String {
        var num = n
        var result = ""
        
        repeat {
            result = String(num % 3) + result
            num /= 3
        } while num > 0
        
        return String(result)
    }
    
    var ternaryArray = toTernary(n).compactMap({ Int(String($0)) })
    var result = 0
    
    for (index, value) in ternaryArray.enumerated() {
        result += value * Int(pow(3.0, Double(index)))
    }
    
    return result
}
