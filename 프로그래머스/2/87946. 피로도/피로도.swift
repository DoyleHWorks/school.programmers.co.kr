import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    
    var result: Int = 0
    var visited: [Bool] = Array(repeating: false, count: dungeons.count)

    func explore(_ k: Int, _ visited: [Bool], _ count: Int) {
        result = max(result, count)
        
        for (index, dungeon) in dungeons.enumerated() {
            if visited[index] { continue }
            if k < dungeon[0] { continue }
            
            var newVisited = visited
            newVisited[index] = true
            explore(k - dungeon[1], newVisited, count + 1)
        }
    }
    
    explore(k, visited, 0)
    return result
}