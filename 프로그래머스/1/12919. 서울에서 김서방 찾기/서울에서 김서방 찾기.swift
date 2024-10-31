func solution(_ seoul: [String]) -> String? {
    guard (1...1000).contains(seoul.count) && seoul.allSatisfy({(1...20).contains($0.count)}) else {
        print("입력값은 길이 1 이상, 1000 이하인 배열이고, 입력값의 원소는 길이 1 이상, 20 이하인 문자열이어야 합니다.")
        return nil
    }
    
    if let kimLocation = seoul.firstIndex(of: "Kim") {
        return "김서방은 \(kimLocation)에 있다"
    } else {
        return "김서방을 찾을 수 없다"
    }
}