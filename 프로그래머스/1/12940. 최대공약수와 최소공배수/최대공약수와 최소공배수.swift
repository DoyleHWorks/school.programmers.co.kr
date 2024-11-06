func solution(_ n: Int, _ m: Int) -> [Int] {
    guard (1...1000000).contains(n), (1...1000000).contains(m) else {
        print("두 수는 1이상 1000000이하의 자연수이어야 합니다.")
        return []
    }
    
    // Euclidean Algorithm
    func gcd(_ n: Int, _ m: Int) -> Int {
        var a = n
        var b = m
        while b != 0 {
            let r = a % b
            a = b
            b = r
        }
        return a
    }

    func lcm(_ n: Int, _ m: Int) -> Int {
        return (n * m) / gcd(n, m)
    }
    
    return [gcd(n, m), lcm(n, m)]
}
