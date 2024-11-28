import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var routes: [String:[String]] = [:]
    let ticketCount = tickets.count
    
    for ticket in tickets {
        let start = ticket[0], end = ticket[1]
        routes[start, default: []].append(end)
    }
    
    for key in routes.keys {
        routes[key]?.sort() // 조건 2: 만일 가능한 경로가 2개 이상일 경우 알파벳 순서가 앞서는 경로를 return 합니다.
    }
    
    func dfs(_ current: String, _ path: inout [String]) -> Bool {
        if path.count == ticketCount + 1 { // 조건 1: 주어진 항공권은 모두 사용해야 합니다.
            return true
        }
        
        guard let destinations = routes[current], !destinations.isEmpty else { return false }
        
        for (index, next) in destinations.enumerated() {
            routes[current]?.remove(at: index)
            path.append(next)
            
            if dfs(next, &path) {
                return true
            }
            
            path.removeLast()
            routes[current]?.insert(next, at: index)
        }
        
        return false
    }
    
    var path: [String] = ["ICN"]
    _ = dfs("ICN", &path)
    return path
}
