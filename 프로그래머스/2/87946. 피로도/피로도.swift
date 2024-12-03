import Foundation

func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    // k는 1 이상 5000 이하의 자연수
    // dungeonsExample = [[80,20],[50,40],[30,10]]
    // 1 <= dungeons.count <= 8
    // 최소 필요 피로도 >= 소모 피로도 ( 1 이상 1000 이하 자연수 )
    // 서로 다른 던전끼리 수치 같을 수 있음
    //
    
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