import Foundation

func solution(_ tickets: [[String]]) -> [String] {
    var routes: [String:[String]] = [:]
    let ticketCount = tickets.count
    
    for ticket in tickets {
        let start = ticket[0], end = ticket[1]
        routes[start, default: []].append(end)
    }
    
    for key in routes.keys {
        routes[key]?.sort() // 조건: 만일 가능한 경로가 2개 이상일 경우 알파벳 순서가 앞서는 경로를 return함
    }
    
    func dfs(_ current: String, _ path: inout [String]) -> Bool {
        if path.count == ticketCount + 1 { // 조건: 주어진 항공권은 모두 사용해야 함
            return true
        }
        
        guard let destinations = routes[current] else { return false } // 다음 목적지가 없다면 돌아가기
        
        for (index, next) in destinations.enumerated() {
            routes[current]?.remove(at: index)
            path.append(next)
            
            if dfs(next, &path) { // 항공권을 모두 썼는지 체크 & 다음 경로 확인
                return true
            }
            
            path.removeLast()
            routes[current]?.insert(next, at: index)
        }
        
        return false
    }
    
    var path: [String] = ["ICN"] // 조건: 항상 "ICN" 공항에서 출발
    _ = dfs("ICN", &path)
    return path
}