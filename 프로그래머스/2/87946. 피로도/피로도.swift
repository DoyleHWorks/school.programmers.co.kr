import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    
    var result: Int = 0
    var kMutable = k
    var visited: [Bool] = Array(repeating: false, count: dungeons.count)

    func explore(_ kMutable: Int, _ visited: [Bool], _ count: Int) {
        result = max(result, count)
        
        for (index, dungeon) in dungeons.enumerated() {
            if visited[index] { continue }
            if kMutable < dungeon[0] { continue }
            
            var newVisited = visited
            newVisited[index] = true
            explore(kMutable - dungeon[1], newVisited, count + 1)
        }
    }
    
    explore(kMutable, visited, 0)
    return result
}